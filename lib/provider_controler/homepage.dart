import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:laundry_bin_app/models_class/homepage.dart';

class HomepageProvider extends ChangeNotifier {
  List<Datum> catlist = [];

  Future<void> getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://laundry-app-backend-mwlf.onrender.com/api/getallcategory'));
      if (response.statusCode == 200) {
        print(response.statusCode);
        // List<HomePage> model = List<HomePage>.from(
        //     jsonDecode(response.body).map((e) => HomePage.fromJson(e)));
        final responsedata=jsonDecode(response.body);
        List<Datum> model = List<Datum>.from(responsedata["data"]
            .map((Element) => Datum.fromJson(Element)));
        catlist = model;
        notifyListeners();
      } else {
        print(response.statusCode);
        throw Exception();
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
