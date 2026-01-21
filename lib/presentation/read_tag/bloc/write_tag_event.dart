part of 'write_tag_bloc.dart';

@freezed
sealed class WriteTagEvent with _$WriteTagEvent {
  const factory WriteTagEvent.initialState() = _InitialState;

  const factory WriteTagEvent.changeDataValue({required String value}) = _ChangeDataValue;

  const factory WriteTagEvent.changeDataType({required String type}) = _ChangeDataType;

  const factory WriteTagEvent.changeWriteDataStatus(
      {required WriteDataStatus writeDataStatus}) = _ChangeWriteDataStatus;
}
