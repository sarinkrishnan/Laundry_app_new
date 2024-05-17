
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmalltextBox extends StatelessWidget {
  const SmalltextBox({
    super.key, required this.Text, required this.text_cvv_and_expcontroler,
  });
  final TextEditingController text_cvv_and_expcontroler;
 final  String  Text ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 161.w,
        child: TextField(controller: text_cvv_and_expcontroler,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffFFFFFF),
              contentPadding:
                  EdgeInsets.only(bottom: 23, top: 22, left: 35),
              hintText: Text,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(140.r))),
        ));
  }
}
