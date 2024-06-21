import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:laundry_bin_app/models_class/register.dart';

class UserProvider with ChangeNotifier {
  late Registor _user;

  Registor get user => _user;

  Future<void> registerUser(
      String userName, String email, String password, int phoneNumber) async {
    final url =
        Uri.parse('https://laundry-app-backend-mwlf.onrender.com/api/register');
    final body = json.encode({
      "userName": userName,
      "email": email,
      "password": password,
      "phoneNumber": '+91$phoneNumber'
    });
    print(userName);
    print(email);
    print(password);
    print(phoneNumber);
    final response = await http
        .post(url, body: body, headers: {'Content-Type': 'application/json'});

    final responseData = json.decode(response.body);

    if (response.statusCode == 200) {
      _user = Registor.fromJson(responseData['data']);
      print(response.statusCode);
      notifyListeners();
    } else {
      print(response.statusCode);
      throw Exception(responseData['message']);
    }
  }
}
