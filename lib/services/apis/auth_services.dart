import 'package:blog_app/error/error.dart';
import 'package:blog_app/model/auth.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/all.dart';

abstract class AuthBase {
  Future<AuthModel> userRegistration(
      {String email, String name, String password});
  Future<AuthModel> userLogin({String email, String password});
  // Future<AuthModel> userLogin();
}

final authServiceProvider = Provider<AuthBase>((ref) {
  return Auth();
});

class Auth implements AuthBase {
  Dio _dio = Dio();
  // ignore: non_constant_identifier_names
  final String BASE_URL = 'https://x8ki-letl-twmt.n7.xano.io/api:_yoLxu1D/';
  @override
  Future<AuthModel> userRegistration(
      {String email, String name, String password}) async {
    print('start');
    Map<String, dynamic> body = {
      'email': email,
      'name': name,
      'password': password,
    };
    try {
      var value = await _dio.post(BASE_URL + 'auth/signup', data: body);
      return AuthModel.fromMap(value.data);
    } on DioError catch (e) {
      print(e.response.data);
      throw BError(e.response.data['message']);
    }
  }

  @override
  Future<AuthModel> userLogin({String email, String password}) async {
    Map<String, dynamic> body = {
      'email': email,
      'password': password,
    };
    try {
      var response = await _dio.post(BASE_URL + 'auth/login', data: body);
      return AuthModel.fromMap(response.data);
    } on DioError catch (e) {
      print(e.response.data);
      throw BError(e.response.data['message']);
    }
  }
}
