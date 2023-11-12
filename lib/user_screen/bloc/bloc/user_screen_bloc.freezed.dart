// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserScreenState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;
  int get currentScreen => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  bool get isAllLoaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserScreenStateCopyWith<UserScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserScreenStateCopyWith<$Res> {
  factory $UserScreenStateCopyWith(
          UserScreenState value, $Res Function(UserScreenState) then) =
      _$UserScreenStateCopyWithImpl<$Res, UserScreenState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<User> users,
      int currentScreen,
      int offset,
      bool isAllLoaded});
}

/// @nodoc
class _$UserScreenStateCopyWithImpl<$Res, $Val extends UserScreenState>
    implements $UserScreenStateCopyWith<$Res> {
  _$UserScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? users = null,
    Object? currentScreen = null,
    Object? offset = null,
    Object? isAllLoaded = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      currentScreen: null == currentScreen
          ? _value.currentScreen
          : currentScreen // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      isAllLoaded: null == isAllLoaded
          ? _value.isAllLoaded
          : isAllLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserScreenStateImplCopyWith<$Res>
    implements $UserScreenStateCopyWith<$Res> {
  factory _$$UserScreenStateImplCopyWith(_$UserScreenStateImpl value,
          $Res Function(_$UserScreenStateImpl) then) =
      __$$UserScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<User> users,
      int currentScreen,
      int offset,
      bool isAllLoaded});
}

/// @nodoc
class __$$UserScreenStateImplCopyWithImpl<$Res>
    extends _$UserScreenStateCopyWithImpl<$Res, _$UserScreenStateImpl>
    implements _$$UserScreenStateImplCopyWith<$Res> {
  __$$UserScreenStateImplCopyWithImpl(
      _$UserScreenStateImpl _value, $Res Function(_$UserScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? users = null,
    Object? currentScreen = null,
    Object? offset = null,
    Object? isAllLoaded = null,
  }) {
    return _then(_$UserScreenStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      currentScreen: null == currentScreen
          ? _value.currentScreen
          : currentScreen // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      isAllLoaded: null == isAllLoaded
          ? _value.isAllLoaded
          : isAllLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserScreenStateImpl implements _UserScreenState {
  const _$UserScreenStateImpl(
      {this.isLoading = true,
      final List<User> users = const [],
      this.currentScreen = 0,
      this.offset = 0,
      this.isAllLoaded = false})
      : _users = users;

  @override
  @JsonKey()
  final bool isLoading;
  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final int currentScreen;
  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final bool isAllLoaded;

  @override
  String toString() {
    return 'UserScreenState(isLoading: $isLoading, users: $users, currentScreen: $currentScreen, offset: $offset, isAllLoaded: $isAllLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserScreenStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.currentScreen, currentScreen) ||
                other.currentScreen == currentScreen) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.isAllLoaded, isAllLoaded) ||
                other.isAllLoaded == isAllLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_users),
      currentScreen,
      offset,
      isAllLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserScreenStateImplCopyWith<_$UserScreenStateImpl> get copyWith =>
      __$$UserScreenStateImplCopyWithImpl<_$UserScreenStateImpl>(
          this, _$identity);
}

abstract class _UserScreenState implements UserScreenState {
  const factory _UserScreenState(
      {final bool isLoading,
      final List<User> users,
      final int currentScreen,
      final int offset,
      final bool isAllLoaded}) = _$UserScreenStateImpl;

  @override
  bool get isLoading;
  @override
  List<User> get users;
  @override
  int get currentScreen;
  @override
  int get offset;
  @override
  bool get isAllLoaded;
  @override
  @JsonKey(ignore: true)
  _$$UserScreenStateImplCopyWith<_$UserScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
