import 'package:blog_app/services/prefs/token_pref.dart';
import 'package:hooks_riverpod/all.dart';

final tPrefRepoProvider = Provider<TPrefRepo>((_) {
  return TPrefRepo(_.read(prefServicesProvider));
});

class TPrefRepo {
  final TPrefBase _tPrefBase;

  TPrefRepo(this._tPrefBase);

  Future<bool> saveToken({String value}) async {
    return await _tPrefBase.saveToken(value: value);
  }

  Future<String> getToken() async {
    return _tPrefBase.getToken();
  }
}
