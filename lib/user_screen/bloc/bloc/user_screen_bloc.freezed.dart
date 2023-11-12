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
  List<User>? get users => throw _privateConstructorUsedError;
  int get currentUser => throw _privateConstructorUsedError;

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
  $Res call({List<User>? users, int currentUser});
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
    Object? users = freezed,
    Object? currentUser = null,
  }) {
    return _then(_value.copyWith(
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({List<User>? users, int currentUser});
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
    Object? users = freezed,
    Object? currentUser = null,
  }) {
    return _then(_$UserScreenStateImpl(
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserScreenStateImpl extends _UserScreenState {
  const _$UserScreenStateImpl({final List<User>? users, this.currentUser = 0})
      : _users = users,
        super._();

  final List<User>? _users;
  @override
  List<User>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int currentUser;

  @override
  String toString() {
    return 'UserScreenState(users: $users, currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserScreenStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_users), currentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserScreenStateImplCopyWith<_$UserScreenStateImpl> get copyWith =>
      __$$UserScreenStateImplCopyWithImpl<_$UserScreenStateImpl>(
          this, _$identity);
}

abstract class _UserScreenState extends UserScreenState {
  const factory _UserScreenState(
      {final List<User>? users, final int currentUser}) = _$UserScreenStateImpl;
  const _UserScreenState._() : super._();

  @override
  List<User>? get users;
  @override
  int get currentUser;
  @override
  @JsonKey(ignore: true)
  _$$UserScreenStateImplCopyWith<_$UserScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
