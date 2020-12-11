import 'package:blog_app/model/auth.dart';
import 'package:blog_app/services/apis/auth_services.dart';
import 'package:hooks_riverpod/all.dart';

final authRepoProvider = Provider<AuthRepo>((ref) {
  return AuthRepo(ref.read(authServiceProvider));
});

class AuthRepo {
  final AuthBase _authService;

  AuthRepo(this._authService);
  Future<AuthModel> userRegistration(
      {String email, String name, String password}) async {
    return await _authService.userRegistration(
      email: email,
      name: name,
      password: password,
    );
  }

  Future<AuthModel> userLogin({String email, String password}) async {
    return await _authService.userLogin(
      email: email,
      password: password,
    );
  }
}
