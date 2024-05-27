import "dart:convert";

import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "package:laundry_bin_app/models/register.dart";

class RegisterProvider with ChangeNotifier {
  late Registor _user;
  Registor get user => _user;

  Future<void> RegisterData(
      String username, String email, String password, int phonenumber) async {
    final url =
        Uri.parse('https://laundry-app-backend-mwlf.onrender.com/api/register');

    final body = json.encode({
      'username': username,
      'email': email,
      'password': password,
      'phonnenumber': '+91$phonenumber'
    });
    final response = await http
        .post(url, body: body, headers: {'Content-Type': 'application/json'});
    final responsedata = jsonDecode(response.body);

    if (response.statusCode == 200) {
      _user = Registor.fromJson(responsedata['data']);
      notifyListeners();
    } else {
      throw Exception(['message']);
    }
  }
}
