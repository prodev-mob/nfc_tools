import 'dart:convert';

import 'package:demo_nfc/extension/url_helper.dart';
import 'package:demo_nfc/presentation/home/bloc/home_bloc.dart';
import 'package:demo_nfc/presentation/home/view/component/menu_tile_component.dart';
import 'package:demo_nfc/presentation/read_tag/view/write_tag_screen.dart';
import 'package:demo_nfc/utils/app_color.dart';
import 'package:demo_nfc/utils/app_const.dart';
import 'package:demo_nfc/utils/app_style.dart';
import 'package:demo_nfc/utils/image_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';
import 'package:nfc_manager/ndef_record.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager_ndef/nfc_manager_ndef.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeBloc bloc;

  @override
  void initState() {
    bloc = HomeBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppConst.nfcTag,
        ),
      ),
      body: FutureBuilder(
        future: NfcManager.instance.isAvailable(),
        builder: (context, snapshot) {
          debugPrint("snapshot.data :: :: :: :: : ${snapshot.data}");
          if (!(snapshot.data ?? false)) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppConst.nfcNotAvailableMessage,
                    style: AppStyle.style15W600Black,
                    textAlign: TextAlign.center,
                  ),
                  Lottie.asset(
                    LottieConst.failed,
                    repeat: false,
                  ),
                ],
              ),
            );
          }

          return BlocProvider(
            create: (context) => bloc,
            child: BlocListener<HomeBloc, HomeState>(
              listener: (context, state) {
                if (state.canShowTagEmptyMessage) {
                  Fluttertoast.showToast(
                    msg: AppConst.thisNFCTagIsEmpty,
                  );
                  bloc.add(const HomeEvent.canShowEmptyTagMessage(isTagEmpty: false));
                }
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Column(
                  children: [
                    BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        return MenuTileComponent(
                          onTap: () async {
                            await _readNFCTag();
                          },
                          isActive: state.isNFCReading,
                          image: ImageConst.read,
                          title: AppConst.readTag,
                        );
                      },
                    ),
                    MenuTileComponent(
                      onTap: () {
                        bloc.add(const HomeEvent.storeNFCTagData(
                          tagData: "",
                          canShowToast: false,
                        ));
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WriteTagScreen(),
                          ),
                        );
                      },
                      image: ImageConst.write,
                      title: AppConst.writeTag,
                    ),
                    BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        debugPrint(state.storedDataInTag);
                        return Visibility(
                          visible: state.storedDataInTag.contains("https://") ||
                              state.storedDataInTag.contains("http://") ||
                              state.storedDataInTag.contains(".com"),
                          child: Container(
                            height: 200.h,
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 150.h),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColor.colorDEE0EA,
                                width: 1.2,
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  AppConst.tapToOpenURL,
                                  style: AppStyle.style14W500Black,
                                ),
                                SizedBox(height: 8.h),
                                InkWell(
                                  onTap: () async {
                                    Uri uri =
                                        Uri.parse(state.storedDataInTag.toValidUrl());

                                    if (await canLaunchUrl(uri)) {
                                      launchUrl(uri);
                                    }
                                  },
                                  child: Container(
                                    height: 60.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: AppColor.colorF0F2F8,
                                      border: Border.all(
                                        color: AppColor.colorDEE0EA,
                                        width: 1.2,
                                      ),
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                                    child: Row(
                                      children: [
                                        Icon(Icons.link_rounded, size: 25.sp),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text(
                                          state.storedDataInTag.trim(),
                                          style: AppStyle.style12W500Black,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _readNFCTag() async {
    bloc.add(const HomeEvent.changeNFCReadingStatus(isNFCReading: true));

    await NfcManager.instance.startSession(
      onSessionErrorIos: (error) async {
        await NfcManager.instance.stopSession();
        bloc.add(const HomeEvent.changeNFCReadingStatus(isNFCReading: false));
      },
      onDiscovered: (NfcTag tag) async {
        Ndef? ndef = Ndef.from(tag);

        String payload = "";

        if (ndef?.cachedMessage != null) {
          NdefMessage? ndefMessage = ndef?.cachedMessage!;

          if (ndefMessage!.records.isNotEmpty) {
            NdefRecord wellKnownRecord = ndefMessage.records.first;

            List<int> languageCodeAndContentBytes = wellKnownRecord.payload.toList();
            String languageCodeAndContentText = utf8.decode(languageCodeAndContentBytes);
            payload = languageCodeAndContentText.substring(1);

            bloc.add(HomeEvent.storeNFCTagData(
              tagData: payload,
              canShowToast: true,
            ));
          }
        }

        if (payload.isEmpty) {
          bloc.add(const HomeEvent.storeNFCTagData(
            tagData: "",
            canShowToast: true,
          ));
        }
        await NfcManager.instance.stopSession();
        bloc.add(const HomeEvent.changeNFCReadingStatus(isNFCReading: false));
      },
      pollingOptions: {NfcPollingOption.iso14443, NfcPollingOption.iso15693},
    );
  }
}
