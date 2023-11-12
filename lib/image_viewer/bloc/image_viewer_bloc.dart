import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:eclipse_test/core/config.dart';
import 'package:eclipse_test/image_viewer/images_api.dart';
import 'package:eclipse_test/user_screen/entities/user_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_viewer_event.dart';
part 'image_viewer_state.dart';
part 'image_viewer_bloc.freezed.dart';

class ImageViewerBloc extends Bloc<ImageViewerEvent, ImageViewerState> {
  final _api = ImagesApi();
  final int userId;

  ImageViewerBloc(super.initialState, this.userId) {
    on<ImageViewerEvent>((event, emit) async {
      if (state.imagesList.length >
          event.index + InfiniteScrollConfig.loadingDelta) return;

      final loadedImages = await _newImages(state);

      if (loadedImages == null) return;

      emit(
        state.copyWith(
          imagesList: [...state.imagesList, ...loadedImages],
          userImage: state.userImage ?? loadedImages[0],
          offset: state.offset + InfiniteScrollConfig.offsetDelta,
          isAllLoaded: loadedImages.isEmpty,
          isLoading: false,
        ),
      );
    });
  }

  Future<List<UserImage>?> _newImages(ImageViewerState state) async {
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
}
