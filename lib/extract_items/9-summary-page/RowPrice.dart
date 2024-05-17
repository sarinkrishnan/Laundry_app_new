
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowPrice extends StatelessWidget {
  const RowPrice({
    super.key,
    required this.text,
    this.count,
    required this.price,
  });
  final String text;
  final String? count;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              fontFamily: 'DM_Sans',
              color: Color(0xff141521)),
        ),
        Text(
          count.toString(),
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              fontFamily: 'DM_Sans',
              color: Color(0xff141521)),
        ),
        Text(
          price,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              fontFamily: 'DM_Sans',
              color: Color(0xff141521)),
        )
      ],
    );
  }
}
