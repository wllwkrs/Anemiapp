import 'dart:convert';
import 'package:http/http.dart' as http;
import './base_url.dart';

String urlRegister = '$url/register';
String urlLogin = '$url/login';

// Method Register
Future register(Map<String, dynamic> data) async {
  final http.Response response = await http.post(
    Uri.parse(urlRegister),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: json.encode(data),
  );

  return json.decode(response.body);
}

// Method Login
Future login(Map<String, dynamic> data) async {
  final http.Response response = await http.post(
    Uri.parse(urlRegister),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: json.encode(data),
  );

  return json.decode(response.body);
}