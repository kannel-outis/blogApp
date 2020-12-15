import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/all.dart';

final isLoadingB = ChangeNotifierProvider<LoadingB>((_) {
  return LoadingB();
});

class LoadingB extends ChangeNotifier {
  bool _isLoading = false;

  setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  bool get isLoading => _isLoading;
}
