import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_screen_event.dart';
part 'user_screen_state.dart';
part 'user_screen_bloc.freezed.dart';

class UserScreenBloc extends Bloc<UserScreenEvent, UserScreenState> {
  UserScreenBloc() : super(_Initial()) {
    on<UserScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
