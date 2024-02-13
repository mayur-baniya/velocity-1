import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

Future<http.Response> loginService(String email, String password) async {
  var url = Uri.parse('${dotenv.env['BASE_URL']}/auth/login');
  print('baseurl: ${url}');

  Map<String, String> reqMap = {
    "email": email,
    "password": password,
  };

  try {
    http.Response resp = await http.post(
      url,
      headers: <String, String>{'Content-Type': 'application/json'},
      body: jsonEncode(reqMap),
    );
    return resp;
  } catch (e) {
    // Specific error handling for network-related issues
    print('Error during login: $e');
    throw Exception('Failed to log in');
  }
}

Future<http.Response> signupService(
    String name, String email, String password, String number) async {
  var url = Uri.parse('${dotenv.env['BASE_URL']}/auth/signup');
  Map<String, String> reqMap = {
    "name": name,
    "email": email,
    "number": number,
    "password": password,
  };

  try {
    http.Response resp = await http.post(
      url,
      headers: <String, String>{'Content-Type': 'application/json'},
      body: jsonEncode(reqMap),
    );
    return resp;
  } catch (e) {
    print('Error during login: $e');
    throw Exception('Failed to log in');
  }
}
