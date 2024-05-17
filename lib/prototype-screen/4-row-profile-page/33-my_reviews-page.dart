import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/prototype-screen/4-row-profile-page/28-dashboard-page.dart';

class MyreviewPage extends StatelessWidget {
  const MyreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      body: Column(
        children: [
          Container(
            height: 118.h,
            width: 381.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Color(0xffFFFFFF)),
            child: Padding(
              padding: EdgeInsets.only(top: 37.h, left: 24.w),
              child: Row(
                children: [
                  Icon(
                    Icons.keyboard_backspace_sharp,
                    size: 30.sp,
                  ),
                  Gap(80.w),
                  Text(
                    'My Reviews',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 21.sp,
                        fontFamily: 'DM_Sans',
                        color: Color(0xff141521)),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
            child: Column(
              children: [
                Gap(10.h),
                Padding(
                  padding: EdgeInsets.only(left: 192.w),
                  child: Jan_mar_Celender(),
                ),
                Gap(10.h),
                My_review_Container(
                  text: 'Yesterday',
                ),
                Gap(13.h),
                My_review_Container(
                  text: 'Wednesday',
                ),
                Gap(13.h),
                My_review_Container(
                  text: '12 Dec 2024',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class My_review_Container extends StatelessWidget {
  const My_review_Container({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195.h,
      width: 349.w,
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(19.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'asset/images/fi_1828884 (1).png',
                      height: 18.h,
                      width: 18.w,
                    ),
                    Image.asset(
                      'asset/images/fi_1828884 (1).png',
                      height: 18.h,
                      width: 18.w,
                    ),
                    Image.asset(
                      'asset/images/fi_1828884 (1).png',
                      height: 18.h,
                      width: 18.w,
                    ),
                    Image.asset(
                      'asset/images/fi_1828884 (1).png',
                      height: 18.h,
                      width: 18.w,
                    ),
                    Image.asset(
                      'asset/images/fi_1828884 (1).png',
                      height: 18.h,
                      width: 18.w,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 7.w),
                  child: Text(
                    text,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        fontFamily: 'DM_Sans',
                        color: Color(0xff000000)),
                  ),
                )
              ],
            ),
            Gap(11.h),
            Text(
              'Outstanding service at Laundrybin! Clothes return fresh, team is professional, and pickup/delivery is convenient. Highly recommend for top-notch laundry!',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp,
                  fontFamily: 'DM_Sans',
                  color: Color(0xff6E97AE)),
            ),
            Gap(15.h),
            Container(
              padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 3.h),
              height: 31.h,
              decoration: BoxDecoration(
                  color: Color(0xffFFF1EF),
                  borderRadius: BorderRadius.circular(8.r)),
              child: Text(
                'Edit Review',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    fontFamily: 'DM_Sans',
                    color: Color(0xffFE725C)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
