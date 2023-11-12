part of 'user_screen_bloc.dart';

@freezed
class UserScreenState with _$UserScreenState {
  const factory UserScreenState({
    @Default(true) bool isLoading,
    @Default([]) List<User> users,
    @Default(0) int currentScreen,
    @Default(0) int offset,
    @Default(false) bool isAllLoaded,
  }) = _UserScreenState;
}
