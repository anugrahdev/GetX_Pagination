import 'package:dio/dio.dart';
import 'package:getx_pagination/core/model/pagination_filter.dart';
import 'package:getx_pagination/core/model/user_model.dart';

class UserRepository {
  Dio _dio;

  UserRepository(
    this._dio,
  );

  Future<List<UserModel>> getUsers(PaginationFilter filter) {
    return _dio.get('/users', queryParameters: {
      'page': filter.page,
      'limit': filter.limit
    }).then((value) => value?.data
        ?.map<UserModel>(
          (u) => UserModel.fromJson(u),
        )
        ?.toList());
  }
}
