part of 'user_screen_bloc.dart';

sealed class UserScreenEvent {}

final class NextScreenEvent extends UserScreenEvent {}

final class PreviousScreenEvent extends UserScreenEvent {}

final class UserScreeenInitEvent extends UserScreenEvent {}
