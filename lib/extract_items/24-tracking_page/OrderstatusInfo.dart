
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OrderstatusInfo extends StatelessWidget {
  const OrderstatusInfo({
    super.key,
    required this.image,
    required this.text,
    required this.text1,
    required this.color,
  });
  final String image;

  final String text;
  final String text1;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 51.h,
          width: 51.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r), color: color),
          child: Center(
            child: Image.asset(
              image,
              height: 22.h,
              width: 22.w,
            ),
          ),
        ),
        Gap(20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text,
                style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xffA0A5BA),
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.w500)),
            Text(text1,
                style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xff000000),
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.w500)),
          ],
        )
      ],
    );
  }
}
