import 'package:blog_app/model/auth.dart';
import 'package:blog_app/services/apis/auth_services.dart';
import 'package:hooks_riverpod/all.dart';

class AuthRepo {
  final authService = Auth();
  Future<AuthModel> userRegistration() async {
    return await authService.userRegistration();
  }
}
