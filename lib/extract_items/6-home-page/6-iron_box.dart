import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class IronBox extends StatelessWidget {
  const IronBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145.h,
      width: 145.w,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xff00202C03),
                blurRadius: 20.r,
                offset: Offset(0.w, 12.h))
          ],
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(30.r)),
      child: Padding(
        padding: EdgeInsets.only(top: 28.46.h),
        child: Column(
          children: [
            Image.asset(
              'asset/images/9-frame-ironbox.png',
              height: 58.37.h,
              width: 32.89.w,
            ),
            Gap(18.16.h),
            Text(
              'Ironing',
              style: TextStyle(
                  color: Color(0xff141521),
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  fontFamily: 'DM_Sans'),
            )
          ],
        ),
      ),
    );
  }
}
