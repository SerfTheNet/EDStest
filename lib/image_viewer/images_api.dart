import 'package:eclipse_test/core/api.dart';
import 'package:eclipse_test/user_screen/entities/user_image.dart';

class ImagesApi extends BaseApi {
  Future<ApiResponse<List<UserImage>>> fetchUserImages({
    required int userId,
    int offset = 0,
    int limit = 5,
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
}
