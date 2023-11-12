import 'package:bloc/bloc.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:eclipse_test/user_screen/bloc/bloc/user_api.dart';
import 'package:eclipse_test/user_screen/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_screen_event.dart';
part 'user_screen_state.dart';
part 'user_screen_bloc.freezed.dart';

class UserScreenBloc extends Bloc<UserScreenEvent, UserScreenState> {
  final _api = UserApi();

  UserScreenBloc(super.initialState) {
    on<UserScreenEvent>((event, emit) async {
      switch (event) {
        case UserScreeenInitEvent():
          await _initialize(emit);
        case NextScreenEvent():
          _handleGoNext(emit);
        case PreviousScreenEvent():
          _handleGoPrevoous(emit);
      }
    });
  }

  Future<void> _initialize(Emitter<UserScreenState> emit) async {
    List<User>? userList;
    userList = await _loadUsers();

    if (userList != null) {
      emit(
        state.copyWith(
          users: userList,
        ),
      );
    } else {
      add(UserScreeenInitEvent());
    }
  }

  void _handleGoNext(Emitter<UserScreenState> emit) {
    if (state.isLoading) return;

    emit(
      state.copyWith(
        currentUser: _loopUserId(1),
      ),
    );
  }

  void _handleGoPrevoous(Emitter<UserScreenState> emit) {
    if (state.isLoading) return;

    emit(
      state.copyWith(
        currentUser: _loopUserId(-1),
      ),
    );
  }

  int _loopUserId(int userIdDelta) =>
      (state.users!.length + state.currentUser + userIdDelta) %
      state.users!.length;

  Future<List<User>?> _loadUsers() async {
    final response = await _api.fetchUsers();

    if (response.isError) {
      BotToast.showText(
          text: 'Ошибка подгрузки пользоватей: {${response.error}}');
      return null;
    }

    return response.result;
  }
}
