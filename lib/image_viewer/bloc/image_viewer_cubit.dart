import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:eclipse_test/api/images_api/entities/user_image.dart';
import 'package:eclipse_test/api/users_api/entities/user.dart';
import 'package:eclipse_test/core/config.dart';
import 'package:eclipse_test/api/images_api/images_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_viewer_state.dart';
part 'image_viewer_cubit.freezed.dart';

class ImageViewerQubit extends Cubit<ImageViewerState> {
  final _api = ImagesApi();
  final User user;
  Timer? timer;

  // В API нет возможности получить фотографии одного пользователя!
  // Чрезвычайно неэффективное решение фильтрацию по альбомам пользователя
  final Set<int> _userAlbumsIdSet;

  ImageViewerQubit(super.initialState, this.user) : _userAlbumsIdSet = {};

  Future<void> initialize() async {
    final albumsResponse = await _api.fetchUserAlbums(userId: user.id);
    if (albumsResponse.isError) return;

    _userAlbumsIdSet.addAll(
      albumsResponse.result!.map((album) => album.id),
    );

    processNewImages(0);
  }

  Future<void> processNewImages(int imageIndex) async {
    if (state.imagesList.length >
            imageIndex + InfiniteScrollConfig.loadingDelta ||
        state.isAllLoaded ||
        _userAlbumsIdSet.isEmpty) return;

    final loadedImages = await _loadNewImages();

    if (loadedImages == null) {
      timer?.cancel();
      timer = Timer(
        const Duration(seconds: 3),
        () => processNewImages(imageIndex),
      );
      return;
    }

    if (loadedImages.isEmpty) {
      emit(state.copyWith(isAllLoaded: true));
    } else {
      final userFiltredImgs = loadedImages
          .where(
            (element) => _userAlbumsIdSet.contains(element.albumId),
          )
          .toList();

      emit(
        state.copyWith(
          imagesList: [...state.imagesList, ...userFiltredImgs],
          offset: state.offset + InfiniteScrollConfig.offsetDelta,
          isAllLoaded: loadedImages.isEmpty,
        ),
      );

      if (userFiltredImgs.isEmpty) processNewImages(imageIndex);
    }
  }

  Future<List<UserImage>?> _loadNewImages() async {
    final response = await _api.fetchUserImages(
      userId: user.id,
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
