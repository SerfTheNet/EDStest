// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_viewer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageViewerState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAllLoaded => throw _privateConstructorUsedError;
  int get imageIdx => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  List<UserImage> get imagesList => throw _privateConstructorUsedError;
  UserImage? get userImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageViewerStateCopyWith<ImageViewerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageViewerStateCopyWith<$Res> {
  factory $ImageViewerStateCopyWith(
          ImageViewerState value, $Res Function(ImageViewerState) then) =
      _$ImageViewerStateCopyWithImpl<$Res, ImageViewerState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isAllLoaded,
      int imageIdx,
      int offset,
      List<UserImage> imagesList,
      UserImage? userImage});
}

/// @nodoc
class _$ImageViewerStateCopyWithImpl<$Res, $Val extends ImageViewerState>
    implements $ImageViewerStateCopyWith<$Res> {
  _$ImageViewerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isAllLoaded = null,
    Object? imageIdx = null,
    Object? offset = null,
    Object? imagesList = null,
    Object? userImage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAllLoaded: null == isAllLoaded
          ? _value.isAllLoaded
          : isAllLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      imageIdx: null == imageIdx
          ? _value.imageIdx
          : imageIdx // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      imagesList: null == imagesList
          ? _value.imagesList
          : imagesList // ignore: cast_nullable_to_non_nullable
              as List<UserImage>,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as UserImage?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageViewerStateImplCopyWith<$Res>
    implements $ImageViewerStateCopyWith<$Res> {
  factory _$$ImageViewerStateImplCopyWith(_$ImageViewerStateImpl value,
          $Res Function(_$ImageViewerStateImpl) then) =
      __$$ImageViewerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isAllLoaded,
      int imageIdx,
      int offset,
      List<UserImage> imagesList,
      UserImage? userImage});
}

/// @nodoc
class __$$ImageViewerStateImplCopyWithImpl<$Res>
    extends _$ImageViewerStateCopyWithImpl<$Res, _$ImageViewerStateImpl>
    implements _$$ImageViewerStateImplCopyWith<$Res> {
  __$$ImageViewerStateImplCopyWithImpl(_$ImageViewerStateImpl _value,
      $Res Function(_$ImageViewerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isAllLoaded = null,
    Object? imageIdx = null,
    Object? offset = null,
    Object? imagesList = null,
    Object? userImage = freezed,
  }) {
    return _then(_$ImageViewerStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAllLoaded: null == isAllLoaded
          ? _value.isAllLoaded
          : isAllLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      imageIdx: null == imageIdx
          ? _value.imageIdx
          : imageIdx // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      imagesList: null == imagesList
          ? _value._imagesList
          : imagesList // ignore: cast_nullable_to_non_nullable
              as List<UserImage>,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as UserImage?,
    ));
  }
}

/// @nodoc

class _$ImageViewerStateImpl implements _ImageViewerState {
  _$ImageViewerStateImpl(
      {this.isLoading = true,
      this.isAllLoaded = false,
      this.imageIdx = 0,
      this.offset = 0,
      final List<UserImage> imagesList = const [],
      this.userImage})
      : _imagesList = imagesList;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isAllLoaded;
  @override
  @JsonKey()
  final int imageIdx;
  @override
  @JsonKey()
  final int offset;
  final List<UserImage> _imagesList;
  @override
  @JsonKey()
  List<UserImage> get imagesList {
    if (_imagesList is EqualUnmodifiableListView) return _imagesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagesList);
  }

  @override
  final UserImage? userImage;

  @override
  String toString() {
    return 'ImageViewerState(isLoading: $isLoading, isAllLoaded: $isAllLoaded, imageIdx: $imageIdx, offset: $offset, imagesList: $imagesList, userImage: $userImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageViewerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAllLoaded, isAllLoaded) ||
                other.isAllLoaded == isAllLoaded) &&
            (identical(other.imageIdx, imageIdx) ||
                other.imageIdx == imageIdx) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            const DeepCollectionEquality()
                .equals(other._imagesList, _imagesList) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isAllLoaded, imageIdx,
      offset, const DeepCollectionEquality().hash(_imagesList), userImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageViewerStateImplCopyWith<_$ImageViewerStateImpl> get copyWith =>
      __$$ImageViewerStateImplCopyWithImpl<_$ImageViewerStateImpl>(
          this, _$identity);
}

abstract class _ImageViewerState implements ImageViewerState {
  factory _ImageViewerState(
      {final bool isLoading,
      final bool isAllLoaded,
      final int imageIdx,
      final int offset,
      final List<UserImage> imagesList,
      final UserImage? userImage}) = _$ImageViewerStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isAllLoaded;
  @override
  int get imageIdx;
  @override
  int get offset;
  @override
  List<UserImage> get imagesList;
  @override
  UserImage? get userImage;
  @override
  @JsonKey(ignore: true)
  _$$ImageViewerStateImplCopyWith<_$ImageViewerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
