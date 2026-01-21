part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    required bool isNFCReading,
    required bool canShowTagEmptyMessage,
    required String storedDataInTag,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        isNFCReading: false,
        storedDataInTag: '',
        canShowTagEmptyMessage: false,
      );
}
