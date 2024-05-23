import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/4-register-page.dart';

Future<void> putData() async {
  final url = ' https://laundry-app-backend-mwlf.onrender.com/api/register';
  var datas = {
    'name': name.text,
    'e-mail': e_mail_phonenumber == null? '': e_mail_phonenumber,
    'password': password.text,
    'confirmpassword': confirmpassword.text
  };
  String jsonBody = json.encode(datas);

  var response = await http.post(
    Uri.parse(url),
    

  );

  if (response.statusCode == 200) {
    var jsonResponse = json.decode(response.body);
    print('Response data: $jsonResponse');
    log(response.statusCode);

  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
