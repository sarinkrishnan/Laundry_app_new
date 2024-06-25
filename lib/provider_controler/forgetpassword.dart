import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:laundry_bin_app/models_class/forgetpassword.dart';

class forgetpassswordProvider extends ChangeNotifier {
  late ReforgetPassword _forgetpassword;
  ReforgetPassword get forget_password => _forgetpassword;

  Future<void> getForgetpassword(String forgetpassword) async {
    // final url = Uri.parse(
    //     'https://laundry-app-backend-mwlf.onrender.com/api/forgotpassword');
    // final body = json.encode({"email": forgetpassword});
    // final headers = {'Content-Type': 'application/json'};
    // print(forgetpassword);

    try {
      // final response = await http.post(url, body: body, headers: headers);
      var response = await http.post(
          Uri.parse(
              'https://laundry-app-backend-mwlf.onrender.com/api/forgotpassword'),
          body: json.encode({'email': forgetpassword}),
          headers: {'Content-Type': 'application/json'});
      if (response.statusCode == 200) {
        final responsedata = json.decode(response.body);
        print(response.statusCode);

        _forgetpassword = ReforgetPassword.fromJson(responsedata);
      } else {
        print(response.statusCode);
        notifyListeners();
        throw Exception(response);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
