part of 'write_tag_bloc.dart';

@freezed
sealed class WriteTagState with _$WriteTagState {
  const factory WriteTagState({
    required String dataValue,
    required String dataType,
    required WriteDataStatus writeDataStatus,
  }) = _WriteTagState;

  factory WriteTagState.initial() => const WriteTagState(
        dataValue: "",
        dataType: AppConst.link,
        writeDataStatus: WriteDataStatus.none,
      );
}
