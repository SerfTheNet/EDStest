part of 'image_viewer_cubit.dart';

@freezed
class ImageViewerState with _$ImageViewerState {
  factory ImageViewerState({
    @Default(false) bool isAllLoaded,
    @Default(0) int offset,
    @Default([]) List<UserImage> imagesList,
  }) = _ImageViewerState;
}
