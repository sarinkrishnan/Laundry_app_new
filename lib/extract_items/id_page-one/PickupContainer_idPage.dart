
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PickupContainer_idPage extends StatelessWidget {
  const PickupContainer_idPage({
    super.key,
    required this.text,
    required this.text1,
  });
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 144.h,
      width: 333.w,
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.only(top: 14.h, left: 16.w),
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
                  color: Color(0xff200f33),
                  fontFamily: 'DM_Sans',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Image.asset(
                  'asset/images/027-calendar-id_page.png',
                  width: 16.w,
                  height: 16.h,
                ),
                Gap(8.w),
                Text(
                  //  '25-05-23',
                  text1,
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
                ),
                Gap(11.w),
                Padding(
                  padding: EdgeInsets.only(bottom: 11),
                  child: Container(
                    height: 32.h,
                    width: 108.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          140.r,
                        ),
                        color: Color(0xff1FACF3)),
                    child: Center(
                      child: Text(
                        'Reschedule',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontFamily: 'DM_Sans',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
