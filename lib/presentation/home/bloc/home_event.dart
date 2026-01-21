part of 'home_bloc.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.changeNFCReadingStatus({required bool isNFCReading}) =
      _ChangeNFCReadingStatus;

  const factory HomeEvent.storeNFCTagData({
    required String tagData,
    bool? canShowToast,
  }) = _StoreNFCTagData;

  const factory HomeEvent.canShowEmptyTagMessage({required bool isTagEmpty}) =
      _CanShowEmptyTagMessage;
}
