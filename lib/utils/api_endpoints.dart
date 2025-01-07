class ApiEndpoints {
  static final String baseUrl = 'http://192.168.100.99:8001/api';
  static _AuthEndPoints authEndpoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String registerEmail = '/register';
  final String loginEmail = '/login';
}