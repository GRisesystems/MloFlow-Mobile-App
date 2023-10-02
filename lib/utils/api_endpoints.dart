class ApiEndPoints {
  static const String baseUrl = 'http://localhost:8000/';
  static _AuthEndPoints authEndpoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String registerEmail = 'auth/users/';
  final String loginEmail = 'authapp/login/';
}