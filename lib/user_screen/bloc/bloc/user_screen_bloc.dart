import 'package:bloc/bloc.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:eclipse_test/core/config.dart';
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
        case NextScreenEvent():
          await _nextScreenHandler(emit);
          break;
        case PreviousScreenEvent():
          _previousScreenHandler(emit);
          break;
        case UserScreeenInitEvent():
          await _startEmitter(emit);
      }
    });
  }

  Future<void> _startEmitter(Emitter<UserScreenState> emit) async {
    emit(
      state.copyWith(isLoading: true),
    );
    final newUsers = await _newUsers();
    if (newUsers == null) return;

    emit(
      state.copyWith(
        isLoading: false,
        users: [...state.users, ...newUsers],
        offset: state.offset + InfiniteScrollConfig.offsetDelta,
      ),
    );
  }

  Future<void> _nextScreenHandler(Emitter<UserScreenState> emit) async {
    if (state.isLoading) return;
    if (state.isAllLoaded && state.currentScreen == state.users.length) {
      emit(
        state.copyWith(currentScreen: 0),
      );
    }

    emit(
      state.copyWith(currentScreen: state.currentScreen + 1),
    );

    if (state.currentScreen >
        state.offset - InfiniteScrollConfig.loadingDelta) {
      final newUsers = await _newUsers();
      if (newUsers == null) return;

      emit(
        state.copyWith(
          users: [...state.users, ...newUsers],
          offset: state.offset + InfiniteScrollConfig.offsetDelta,
        ),
      );
    }
  }

  void _previousScreenHandler(Emitter<UserScreenState> emit) {
    if (state.currentScreen < 1) return;
    emit(
      state.copyWith(currentScreen: state.currentScreen - 1),
    );
  }

  Future<List<User>?> _newUsers() async {
    final response = await _api.fetchUsers(offset: state.offset);

    if (response.isError) {
      BotToast.showText(
          text: 'Ошибка подгрузки порции данных: {${response.error}}');
      return null;
    }

    return response.result;
  }
}
