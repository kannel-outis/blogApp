import 'package:hooks_riverpod/all.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class TPrefBase {
  Future<bool> saveToken({String value});
  Future<String> getToken();
}

final prefServicesProvider = Provider<TPrefBase>((_) {
  return TPref();
});

class TPref implements TPrefBase {
  final key = 'token';
  @override
  Future<bool> saveToken({String value}) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return await _prefs.setString(key, value);
  }

  @override
  Future<String> getToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.getString(key);
  }
}
