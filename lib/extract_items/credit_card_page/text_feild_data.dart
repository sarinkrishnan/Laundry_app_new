
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextfeildData extends StatelessWidget {
  const TextfeildData({
    super.key,
    required this.text,required this.text_controler,
  });
  final String text;
  final TextEditingController text_controler;
  @override
  Widget build(BuildContext context) {
    return TextField(controller: text_controler,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffFFFFFF),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: const Color.fromARGB(96, 0, 0, 0)),
          borderRadius: BorderRadius.circular(140.r),
        ),
        hintText: text,
        contentPadding: EdgeInsets.only(top: 22.h, left: 35.w, bottom: 22.h),
        hintStyle: TextStyle(
            fontSize: 15.sp,
            color: Color.fromARGB(127, 131, 145, 161),
            fontFamily: 'DM_Sans',
            fontWeight: FontWeight.w500),
      ),
    );
  }
}