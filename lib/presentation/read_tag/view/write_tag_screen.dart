import 'dart:convert';
import 'dart:typed_data';

import 'package:demo_nfc/extension/url_helper.dart';
import 'package:demo_nfc/global_widget/radio_button_component.dart';
import 'package:demo_nfc/presentation/read_tag/bloc/write_data_status_state.dart';
import 'package:demo_nfc/presentation/read_tag/bloc/write_tag_bloc.dart';
import 'package:demo_nfc/presentation/read_tag/view/component/status_dialog_component.dart';
import 'package:demo_nfc/utils/app_color.dart';
import 'package:demo_nfc/utils/app_const.dart';
import 'package:demo_nfc/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nfc_manager/ndef_record.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager_ndef/nfc_manager_ndef.dart';

class WriteTagScreen extends StatefulWidget {
  const WriteTagScreen({super.key});

  @override
  State<WriteTagScreen> createState() => _WriteTagScreenState();
}

class _WriteTagScreenState extends State<WriteTagScreen> {
  late WriteTagBloc bloc;

  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    bloc = context.read<WriteTagBloc>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConst.writeTag),
      ),
      body: BlocListener<WriteTagBloc, WriteTagState>(
        listener: (context, state) {
          if (state.writeDataStatus == WriteDataStatus.loading) {
            _nfcTagWrite(state: state);
          }

          if (state.writeDataStatus == WriteDataStatus.success ||
              state.writeDataStatus == WriteDataStatus.tagIsNotAvailable) {
            Future.delayed(
              const Duration(seconds: 3),
              () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            );
          }
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            children: [
              TextField(
                controller: textController,
                onChanged: (value) {
                  bloc.add(WriteTagEvent.changeDataValue(value: value));
                },
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                decoration: InputDecoration(
                  hintText: AppConst.enterData,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(
                      color: AppColor.colorBDBDBD,
                      width: 1.6,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(
                      color: AppColor.color298BE3,
                      width: 1.6,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              BlocBuilder<WriteTagBloc, WriteTagState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      Text(
                        AppConst.type,
                        style: AppStyle.style14W500Black,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      RadioButtonComponent(
                        title: AppConst.link,
                        groupValue: state.dataType,
                        initialValue: AppConst.link,
                        onChanged: (value) {
                          bloc.add(
                              const WriteTagEvent.changeDataType(type: AppConst.link));
                        },
                      ),
                      SizedBox(width: 40.w),
                      RadioButtonComponent(
                        title: AppConst.other,
                        groupValue: state.dataType,
                        initialValue: AppConst.other,
                        onChanged: (value) {
                          bloc.add(
                              const WriteTagEvent.changeDataType(type: AppConst.other));
                        },
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          bloc.add(
            const WriteTagEvent.changeWriteDataStatus(
              writeDataStatus: WriteDataStatus.loading,
            ),
          );
          showDialog(
            context: context,
            builder: (context) {
              return const StatusDialogComponent();
            },
          );
        },
        child: Container(
          width: double.infinity,
          height: 52.h,
          margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: AppColor.color298BE3,
            borderRadius: BorderRadius.circular(12.r),
          ),
          alignment: Alignment.center,
          child: Text(
            AppConst.writeData,
            style: AppStyle.style15W600White,
          ),
        ),
      ),
    );
  }

  void _nfcTagWrite({required WriteTagState state}) {
    NfcManager.instance.startSession(
      onSessionErrorIos: (error) async {
        await NfcManager.instance.stopSession();
        bloc.add(const WriteTagEvent.changeWriteDataStatus(
            writeDataStatus: WriteDataStatus.failed));
      },
      onDiscovered: (NfcTag tag) async {
        var ndef = Ndef.from(tag);
        if (ndef == null || !ndef.isWritable) {
          await NfcManager.instance.stopSession();
          bloc.add(const WriteTagEvent.changeWriteDataStatus(
              writeDataStatus: WriteDataStatus.tagIsNotAvailable));
          return;
        }

        NdefMessage message = NdefMessage(records: [
          state.dataType == AppConst.link
              ? _uriRecord(state.dataValue.toValidUrl())
              : _textRecord(state.dataValue),
        ]);

        try {
          await ndef.write(message: message);
          bloc.add(const WriteTagEvent.changeWriteDataStatus(
              writeDataStatus: WriteDataStatus.success));
          NfcManager.instance.stopSession();
        } catch (e) {
          await NfcManager.instance.stopSession();
          bloc.add(const WriteTagEvent.changeWriteDataStatus(
              writeDataStatus: WriteDataStatus.failed));
        }
      },
      pollingOptions: {NfcPollingOption.iso14443, NfcPollingOption.iso15693}
    );
  }

  NdefRecord _uriRecord(String uri) {
    final uriBytes = utf8.encode(uri);

    return NdefRecord(
      typeNameFormat: TypeNameFormat.wellKnown,
      type: Uint8List.fromList(utf8.encode('U')),
      identifier: Uint8List(0),
      payload: Uint8List.fromList([0x00, ...uriBytes]), // 0x00 = no URI prefix
    );
  }

  NdefRecord _textRecord(String text) {
    final textBytes = utf8.encode(text);
    final languageCode = utf8.encode('en');

    return NdefRecord(
      typeNameFormat: TypeNameFormat.wellKnown,
      type: Uint8List.fromList(utf8.encode('T')),
      identifier: Uint8List(0),
      payload: Uint8List.fromList([
        languageCode.length,
        ...languageCode,
        ...textBytes,
      ]),
    );
  }


  @override
  void dispose() {
    bloc.add(const WriteTagEvent.initialState());
    super.dispose();
  }
}
