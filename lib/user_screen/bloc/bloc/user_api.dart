import 'package:eclipse_test/core/api.dart';
import 'package:eclipse_test/user_screen/entities/user.dart';

class UserApi extends BaseApi {
  Future<ApiResponse<List<User>>> fetchUsers() {
    return sendGetRequest<List<User>>(
      'users/',
      parserCallback: (json) =>
          (json as List).map((e) => User.fromJson(e)).toList(),
    );
  }
}
