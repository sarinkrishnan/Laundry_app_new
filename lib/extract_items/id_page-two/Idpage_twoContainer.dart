
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Idpage_twoContainer extends StatelessWidget {
  const Idpage_twoContainer({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 146.h,
      width: 333.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), color: Color(0xffFFFFFF)),
      child: Padding(
        padding: EdgeInsets.only(left: 16.w, top: 14.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: Color(0xff1FACF3),
                  fontFamily: 'DM_Sans',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700),
            ),
            Gap(6.h),
            Text(
              '19 Cross, between Hufuf and, Khobar\n676552, India\n+91 8415698625',
              style: TextStyle(
                  color: Color(0xff200F33),
                  fontFamily: 'DM_Sans',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
            Gap(10.h),
            Row(
              children: [
                Image.asset(
                  'asset/images/027-calendar-id_page.png',
                  height: 16.h,
                  width: 16.w,
                ),
                Gap(8.w),
                Text(
                  '26-05-23',
                  style: TextStyle(
                      color: Color(0xff6E97AE),
                      fontFamily: 'DM_Sans',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                ),
                Gap(13.w),
                Image.asset(
                  'asset/images/028-clock-id_page.png',
                  height: 16.h,
                  width: 16.w,
                ),
                Gap(6.w),
                Text(
                  '12:30 PM',
                  style: TextStyle(
                      color: Color(0xff6E97AE),
                      fontFamily: 'DM_Sans',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
