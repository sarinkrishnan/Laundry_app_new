// import "dart:convert";

// import "package:flutter/material.dart";
// import "package:http/http.dart" as http;
// import "package:laundry_bin_app/models/register.dart";

// class RegisterProvider with ChangeNotifier {
//   late Registor _user;
//   Registor get user => _user;

//   Future<void> registerData(
//       String username, String email, String password, int phonenumber) async {
//     final url =
//         Uri.parse('https://laundry-app-backend-mwlf.onrender.com/api/register');

//     final body = json.encode({
//       'username': username,
//       'email': email,
//       'password': password,
//       'phonnenumber': '+91$phonenumber'
//     });
//     final response = await http
//         .post(url, body: body, headers: {'Content-Type': 'application/json'});

//     final responseData = json.decode(response.body);

//     if (response.statusCode == 200) {
//       _user = Registor.fromJson(responseData['data']);
//       print(response.statusCode);
//       notifyListeners();
//     } else {
//       print(response.statusCode);

//       throw Exception(responseData['message']);
//     }
//   }
// }

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class RegisterProvider with ChangeNotifier {
  String _message = '';
  String get Message => _message;

  Future<void> registordata(
    String username,
    String email,
    int phonenumber,
    String password,
  ) async {
    final url =
        Uri.parse('https://laundry-app-backend-mwlf.onrender.com/api/register');
    print(username);
    print(email);

    print(phonenumber);
    print(password);

    final body = json.encode({
      'username': username,
      'email': email,
      'phonnenumber': '+91$phonenumber',
      'password': password,
    });
    try {
      final response = await http
          .post(url, body: body, headers: {'Content-Type': 'application/json'});

      if (response.statusCode == 200) {
        _message = ('success response result : ${response.body}');
        print(response.statusCode);
        return;
      } else {
        _message = ('success response : ${response.body}');
        print(response.statusCode);
      }
    } catch (e) {
      _message = ('An error occurred: $e');
      throw Exception(e);
    }
  }
}
