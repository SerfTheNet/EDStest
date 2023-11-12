import 'package:eclipse_test/api/images_api/entities/user_album.dart';
import 'package:eclipse_test/api/images_api/entities/user_image.dart';
import 'package:eclipse_test/core/api.dart';
import 'package:eclipse_test/core/config.dart';

class ImagesApi extends BaseApi {
  Future<ApiResponse<List<UserImage>>> fetchUserImages({
    required int userId,
    int offset = InfiniteScrollConfig.offsetDelta,
    int limit = InfiniteScrollConfig.offsetDelta,
  }) {
    return sendGetRequest<List<UserImage>>(
      'photos/',
      params: {
        'userId': userId.toString(),
        '_start': offset.toString(),
        '_limit': limit.toString(),
      },
      parserCallback: (json) =>
          (json as List).map((value) => UserImage.fromJson(value)).toList(),
    );
  }

  Future<ApiResponse<List<UserAlbum>>> fetchUserAlbums({required int userId}) {
    return sendGetRequest<List<UserAlbum>>(
      'albums/',
      params: {
        'userId': userId.toString(),
      },
      parserCallback: (json) =>
          (json as List).map((e) => UserAlbum.fromJson(e)).toList(),
    );
  }
}
