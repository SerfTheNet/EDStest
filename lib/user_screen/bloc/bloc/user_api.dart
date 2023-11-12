import 'package:eclipse_test/core/api.dart';
import 'package:eclipse_test/user_screen/entities/user.dart';

class UserApi extends BaseApi {
  Future<ApiResponse<List<User>>> fetchUsers({
    int offset = 0,
    int limit = 5,
  }) {
    return sendGetRequest<List<User>>(
      'users/',
      params: {
        '_start': offset.toString(),
        '_limit': limit.toString(),
      },
      parserCallback: (json) =>
          (json as List).map((value) => User.fromJson(value)).toList(),
    );
  }
}
