import 'dart:convert';

import 'package:project_test/config/config.dart';
import 'package:http/http.dart' as http;

class ApiService {
  ApiService._instantiate();
  static final ApiService instance = ApiService._instantiate();

  getUser() async {
    try {
      final response =
          await http.get(Uri.parse(baseUrl + '/api/users'), headers: {
        'Content-type': 'aplication/json',
        // 'Authorization': 'Bearer ${userToken}',
      });
      if (response.statusCode == 200) {
      // print(response);
      final responseData = jsonDecode(response.body);
      return {'success': true, 'data': responseData};
      }
    } catch (e) {
      print('Error occured: $e');
    }
  }
}
// 