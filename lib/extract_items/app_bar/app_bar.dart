
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarAll extends StatelessWidget {
  const AppbarAll({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: TextStyle(
            fontSize: 20.sp,
            color: Color(0xff141521),
            fontFamily: 'DM_Sans',
            fontWeight: FontWeight.w700),
      );
  }
}
