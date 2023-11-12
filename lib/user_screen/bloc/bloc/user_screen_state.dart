part of 'user_screen_bloc.dart';

@freezed
class UserScreenState with _$UserScreenState {
  const UserScreenState._();

  // Возможно сделать буффер для движения назад и вперед, по аналогии с ImageViewerBlock
  // Чтобы не усложнять оставил два значения
  const factory UserScreenState({
    List<User>? users,
    @Default(0) int currentUser,
  }) = _UserScreenState;

  bool get isLoading => users == null;
}
