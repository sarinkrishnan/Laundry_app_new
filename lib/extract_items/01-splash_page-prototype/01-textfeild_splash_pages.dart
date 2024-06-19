import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextfeildText extends StatelessWidget {
  const TextfeildText({
    super.key,
    required this.text,
    required this.controler,
    this.validator,
    this.onSaveddata,
    
  });
  final String text;
  final TextEditingController? controler;
  final String Function(String?)? validator;
  final void Function(String?)? onSaveddata;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, right: 27.w),
      child: TextFormField(
       
        validator: validator,
        style: TextStyle(
          color: Colors.black,
        ),
        // onSaved: (v) => onSaveddata,
        controller: controler,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 35.w, top: 23.h, bottom: 23.h),
          filled: true,
          fillColor: Color(0xffFFFFFF),
          hintText: text,
          hintStyle: TextStyle(
              color: Color.fromARGB(108, 131, 145, 161),
              fontWeight: FontWeight.w500,
              fontSize: 15.sp),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(140.r)),
        ),
      ),
    );
  }
}
