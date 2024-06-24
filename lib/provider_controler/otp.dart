import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:laundry_bin_app/models_class/otp.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProvider extends ChangeNotifier {
  Future<void> saveId(String _id) async {
    SharedPreferences otp = await SharedPreferences.getInstance();
    otp.setString("id", _id);
    print(_id);
  }

  Future<String> getId() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    return data.getString("id") ?? '';
  }

  get newid => getId();
  late userOtp _otp;
  get otp => _otp;

  // final id = '66791f05d04fac0c89f4ffac';

  Future<void> getOtp(String otp) async {
    final url = Uri.parse(
        'https://laundry-app-backend-mwlf.onrender.com/api/verify/$newid');
    final body = json.encode({"otp": otp});
    final header = {'Content-Type': 'application/json'};
    print(otp);
    try {
      final response = await http.post(url, body: body, headers: header);
      final responsedata = json.decode(response.body);
      if (response.statusCode == 200) {
        print(response.statusCode);
        _otp = userOtp.fromJson(responsedata);
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
