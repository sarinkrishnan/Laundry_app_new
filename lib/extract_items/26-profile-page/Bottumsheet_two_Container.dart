import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bottumsheet_two_Container extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() buttonpress;
  const Bottumsheet_two_Container({
    super.key,
    required this.text,
    required this.color,
    required this.buttonpress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.w,
      height: 64.h,
      child: ElevatedButton(
          onPressed: buttonpress,
          style: ElevatedButton.styleFrom(backgroundColor: color),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontFamily: 'DM_Sans',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFFFFFF)),
            ),
          )),
    );
  }
}
