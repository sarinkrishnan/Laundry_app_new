
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Black_Backarrow extends StatelessWidget {
  const Black_Backarrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w),
      child: Icon(
        Icons.keyboard_backspace,
        size: 32.sp,
      ),
    );
  }
}
