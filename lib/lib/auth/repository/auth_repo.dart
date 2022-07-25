class AuthRepo {
  Future<Map> signIn() async {
    return {
      'isAuthenticated': true,
      'token': 'token',
    };
  }

  Future<Map> signUp() async {
    return {
      'isAuthenticated': true,
      'token': 'token',
    };
  }

  Future<Map> sinOut() async {
    return {
      'isAuthenticated': false,
      'token': 'token',
    };
  }
}
