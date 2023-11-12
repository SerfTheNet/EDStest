import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:eclipse_test/core/config.dart';
import 'package:eclipse_test/image_viewer/images_api.dart';
import 'package:eclipse_test/user_screen/entities/user_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_viewer_state.dart';
part 'image_viewer_cubit.freezed.dart';

class ImageViewerQubit extends Cubit<ImageViewerState> {
  final _api = ImagesApi();
  final int userId;
  Timer? timer;

  ImageViewerQubit(super.initialState, this.userId);

  Future<void> processNewImages(int imageIndex) async {
    if (state.imagesList.length >
            imageIndex + InfiniteScrollConfig.loadingDelta ||
        state.isAllLoaded) return;

    final loadedImages = await _loadNewImages();
    if (loadedImages == null) {
      timer?.cancel();
      timer = Timer(
        const Duration(seconds: 3),
        () => processNewImages(imageIndex),
      );
      return;
    }
    ;

    loadedImages.isEmpty
        ? emit(state.copyWith(isAllLoaded: true))
        : emit(
            state.copyWith(
              imagesList: [...state.imagesList, ...loadedImages],
              offset: state.offset + InfiniteScrollConfig.offsetDelta,
              isAllLoaded: loadedImages.isEmpty,
              isLoading: false,
            ),
          );
  }

  Future<List<UserImage>?> _loadNewImages() async {
    final response = await _api.fetchUserImages(
      userId: userId,
      offset: state.offset,
    );

    if (response.isError) {
      BotToast.showText(
        text: 'Ошибка при загрузке изображений: ${response.error}',
      );
      return null;
    }

    return response.result;
  }

  @override
  Future<void> close() async {
    timer?.cancel();
    super.close();
  }
}
