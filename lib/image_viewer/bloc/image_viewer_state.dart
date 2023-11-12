part of 'image_viewer_bloc.dart';

@freezed
class ImageViewerState with _$ImageViewerState {
  factory ImageViewerState({
    @Default(true) bool isLoading,
    @Default(false) bool isAllLoaded,
    @Default(0) int offset,
    @Default([]) List<UserImage> imagesList,
    UserImage? userImage,
  }) = _ImageViewerState;
}
