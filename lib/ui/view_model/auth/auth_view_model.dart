import 'package:blog_app/error/error.dart';
import 'package:blog_app/model/auth.dart';
import 'package:blog_app/repository/api/api_repo.dart';
import 'package:blog_app/repository/prefs/token_prefs_repo.dart';
import 'package:blog_app/ui/view_model/auth/isLoading.dart';
import 'package:hooks_riverpod/all.dart';

final authC = StateNotifierProvider<AuthC>((_) {
  return AuthC(
      _.read(authRepoProvider), _.read(tPrefRepoProvider), _.read(isLoadingB));
});

class AuthC extends StateNotifier<AuthModel> {
  AuthC(this._authRepo, this._prefRepo, this._loadingB) : super(AuthModel());
  final AuthRepo _authRepo;
  final TPrefRepo _prefRepo;
  final LoadingB _loadingB;
  BError _bError;

  Future<AuthModel> userRegistration(
      {String email, String name, String password}) async {
    _loadingB.setLoading(true);
    try {
      state = await _authRepo
          .userRegistration(
        email: email,
        name: name,
        password: password,
      )
          .then((value) {
        _prefRepo.saveToken(value: value.token).then((value) => print(value));
        print({
          'token': value.token,
        });
        _loadingB.setLoading(false);

        return value;
      });
      return state;
    } on BError catch (e) {
      print(e.message);
      _loadingB.setLoading(false);

      state = null;
      _bError = e;
      return null;
    }
  }

  Future<AuthModel> userLogin({String email, String password}) async {
    _loadingB.setLoading(true);

    try {
      state = await _authRepo
          .userLogin(
        email: email,
        password: password,
      )
          .then((value) {
        _prefRepo.saveToken(value: value.token).then((value) => print(value));

        print({
          'token': value.token,
        });
        _loadingB.setLoading(false);

        return value;
      });
      return state;
    } on BError catch (e) {
      print(e.message);
      state = null;
      print(e.message);
      _bError = e;
      _loadingB.setLoading(false);

      return null;
    }
  }

  BError get bError => _bError;
}
