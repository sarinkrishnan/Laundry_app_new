import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:laundry_bin_app/models_class/login.dart';

class Loginprovider extends ChangeNotifier {
  late LoginModel _user;
  LoginModel get user => _user;
  Future<void> loginuser(String email, String password) async {
    final uri = 'https://laundry-app-backend-mwlf.onrender.com/api/login';
    final url = Uri.parse(uri);
    final body = json.encode({"email": email, "password": password});
    print(email);
    print(password);

    try {
      final response = await http
          .post(url, body: body, headers: {'Content-Type': 'application/json'});
      final responsedata = json.decode(response.body);
      if (response.statusCode == 200) {
        _user = LoginModel.fromJson(responsedata);
        print(response.statusCode);
        notifyListeners();
      } else {
        print(response.statusCode);
        throw Exception(response);
      }   
    } catch (e) {
      throw Exception(e);
    }
  }
}
