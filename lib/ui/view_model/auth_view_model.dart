import 'package:blog_app/model/auth.dart';
import 'package:blog_app/repository/api/api_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/all.dart';

final authC = ChangeNotifierProvider<AuthC>((ref) {
  return AuthC(ref.read(authRepoProvider));
});

class AuthC extends ChangeNotifier {
  final AuthRepo _authRepo;

  AuthC(this._authRepo);

  Future<AuthModel> userRegistration(
      {String email, String name, String password}) async {
    return await _authRepo.userRegistration(
      email: email,
      name: name,
      password: password,
    );
  }

  Future<AuthModel> userLogin({String email, String password}) async {
    return await _authRepo.userLogin(
      email: email,
      password: password,
    );
  }
}
