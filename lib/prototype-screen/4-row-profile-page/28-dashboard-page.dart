import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back-black_button.dart';
import 'package:laundry_bin_app/prototype-screen/4-row-profile-page/26-profile-page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      body: Column(
        children: [
          Container(
            width: double.infinity.w,
            height: 120.h,
            color: Color(0xffFFFFFf),
            child: Padding(
              padding: EdgeInsets.only(top: 40.h, left: 8.w),
              child: Row(
                children: [
                  GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));
                  }, child: Black_Backarrow()),
                  Gap(83.w),
                  Text(
                    'Dashboard',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        fontFamily: 'DM_Sans',
                        color: Color(0xff141521)),
                  ),
                ],
              ),
            ),
          ),
          Gap(22.h),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Overview',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    ),
                    Jan_mar_Celender()
                  ],
                ),
                Gap(20.h),
                Row(
                  children: [
                    DashboardContainer(
                      image: 'asset/images/fi_10466386.png',
                      text1: 'Total bookings',
                      text2: '21',
                      text5: "",
                      text3: 'Than last month',
                      text4: '13 %',
                    ),
                    Gap(7.w),
                    DashboardContainer(
                      image: 'asset/images/fi_9715468.png',
                      text1: 'Your Reviews',
                      text2: '21',
                      text3: '5 last month',
                      text4: '13 %',
                    ),
                  ],
                ),
                Gap(7.h),
                DashboardContainer(
                    image: 'asset/images/fi_879859.png',
                    text3: 'Than last month',
                    text1: 'Your Reviews',
                    text4: '13 %',
                    text5: "",
                    text2: '500')
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Jan_mar_Celender extends StatelessWidget {
  const Jan_mar_Celender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37.h,
      width: 146.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        color: Color(0xffFFFFFF),
      ),
      child: Row(
        children: [
          Gap(9.w),
          Image.asset(
            'asset/images/calendar.png',
            height: 20.h,
            width: 20.w,
          ),
          Gap(6.w),
          Text(
            'Jan - Mar',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                fontFamily: 'DM_Sans',
                color: Color(0xff6E97AE)),
          ),
          Gap(4.w),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 28.sp,
            color: Color(0xff6E97AE),
          )
        ],
      ),
    );
  }
}

class DashboardContainer extends StatelessWidget {
  const DashboardContainer({
    super.key,
    required this.image,
    required this.text3,
    required this.text1,
    required this.text2,
    required this.text4,
    this.text5,
  });
  final String image;
  final String text3;
  final String text1;
  final String text2;
  final String text4;
  final String? text5;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 147.h,
      width: 171.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), color: Color(0xffFFFFFF)),
      child: Padding(
        padding: EdgeInsets.only(left: 13.w, top: 13.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 31.h,
              width: 31.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: Color.fromARGB(40, 31, 172, 243)),
              child: Center(
                child: Image.asset(
                  image,
                  height: 19.h,
                  width: 19.w,
                ),
              ),
            ),
            Gap(12.h),
            Text(
              text1,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  fontFamily: 'DM_Sans',
                  color: Color(0xff000000)),
            ),
            Gap(8.h),
            Row(
              children: [
                Text(
                  text2,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20.sp,
                      fontFamily: 'DM_Sans',
                      color: Color(0xff000000)),
                ),
                Gap(16.w),
                text5 != null
                    ? Row(
                        children: [
                          Icon(
                            Icons.arrow_upward,
                            size: 14.sp,
                            color: Color(0xff0CBA70),
                          ),
                          Text(
                            text4,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                fontFamily: 'DM_Sans',
                                color: Color(0xff0CBA70)),
                          )
                        ],
                      )
                    : SizedBox()
              ],
            ),
            Gap(5.h),
            Text(
              text3,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  fontFamily: 'DM_Sans',
                  color: Color(0xff000000)),
            )
          ],
        ),
      ),
    );
  }
}
