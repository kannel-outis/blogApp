import 'package:hooks_riverpod/all.dart';

final isLoadingB = StateNotifierProvider<LoadingB>((_) {
  return LoadingB(false);
});

class LoadingB extends StateNotifier<bool> {
  LoadingB(bool state) : super(state);

  setLoading(bool loading) {
    state = loading;
  }
}
