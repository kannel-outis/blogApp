class AuthModel {
  final String token;

  AuthModel({this.token});

  AuthModel.fromMap(Map<String, dynamic> response)
      : token = response['authToken'];
}
