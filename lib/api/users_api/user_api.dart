import 'package:eclipse_test/api/users_api/entities/user.dart';
import 'package:eclipse_test/core/api.dart';

class UserApi extends BaseApi {
  Future<ApiResponse<List<User>>> fetchUsers() {
    return sendGetRequest<List<User>>(
      'users/',
      parserCallback: (json) =>
          (json as List).map((e) => User.fromJson(e)).toList(),
    );
  }
}
