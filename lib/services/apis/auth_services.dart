import 'package:blog_app/error/error.dart';
import 'package:blog_app/model/auth.dart';
import 'package:dio/dio.dart';

abstract class AuthBase {
  Future<AuthModel> userRegistration();
  // Future<AuthModel> userLogin();
}

class Auth implements AuthBase {
  Dio _dio = Dio();
  // ignore: non_constant_identifier_names
  final String BASE_URL = 'https://x8ki-letl-twmt.n7.xano.io/api:_yoLxu1D/';
  @override
  Future<AuthModel> userRegistration() async {
    AuthModel _authModel;
    try {
      _authModel = await _dio.post(BASE_URL + 'auth/signup').then((value) {
        if (value.statusCode == 200) {
          return AuthModel.fromMap(value.data);
        } else {
          throw BError(value.data['message']);
        }
      });
    } catch (e) {
      throw BError(e.toString());
    }
    return _authModel;
  }
}
