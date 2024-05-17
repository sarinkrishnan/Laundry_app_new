import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class White_backArrow extends StatelessWidget {
  const White_backArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50.h, left: 24.w),
      child: Icon(
        Icons.keyboard_backspace,
        color: Color(0xffFFFFFF),
        size: 32.sp,
      ),
    );
  }
}
