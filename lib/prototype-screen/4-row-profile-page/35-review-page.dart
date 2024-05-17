import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80.h,
              width: double.infinity.w,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(12.r)),
              child: Padding(
                padding: EdgeInsets.only(left: 24.w, top: 20.h),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.keyboard_backspace,
                        size: 30.sp,
                      ),
                    ),
                    Gap(98.w),
                    Text(
                      'Reviews',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 200.w,top: 8.h),
              child: Container(
                width: 145.w,
                height: 37.h,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(19.r)),
                child: Row(
                  children: [
                    Gap(8.w),
                    Text(
                      '4',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff6E97AE)),
                    ),
                    
                    Padding(
                      padding:  EdgeInsets.only(bottom: 5.h),
                      child: Icon(
                        Icons.star,
                        color: Color(0xff6E97AE),size: 20.sp,
                      ),
                    ),
                    Gap(2.w),
                    Text(
                      'and above',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff6E97AE)),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff6E97AE),
                      size: 30.sp,
                    )
                  ],
                ),
              ),
            ),Gap(8.h),
            PeopleReviewlist(
              image: 'asset/images/064-angelina.png',
              names: 'Angelina',
              day: 'Yesterday',
            ),
            Gap(12.h),
            PeopleReviewlist(
              image: 'asset/images/065-samual.png',
              names: 'Samuel',
              day: 'Wednesday',
            ),
            Gap(12.h),
            PeopleReviewlist(
              image: 'asset/images/066-Gareth Bale.png',
              names: 'Gareth Bale',
              day: '12 Mar 2024',
            ), Gap(12.h),
            PeopleReviewlist(
              image: 'asset/images/067-sebastian.png',
              names: 'Sebastian',
              day: '12 Mar 2024',
            )
          ],
        ),
      ),
    );
  }
}

class PeopleReviewlist extends StatelessWidget {
  const PeopleReviewlist({
    super.key,
    required this.names,
    required this.day,
    required this.image,
  });
  final String names;
  final String day;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      width: 349.w,
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          children: [
            Gap(14.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      image,
                      height: 46.h,
                      width: 46.w,
                    ),
                    Gap(8.w),
                    Column(
                      children: [
                        Text(
                          names,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              fontFamily: 'DM_Sans',
                              color: Color(0xff000000)),
                        ),
                        Gap(1.h),
                        Text(
                          day,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              fontFamily: 'DM_Sans',
                              color: Color(0xffB8B8B8B8)),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 18.h),
                  child: Row(
                    children: [
                      Image.asset(
                        'asset/images/062-yellow_star.png',
                        height: 18.h,
                        width: 18.w,
                      ),
                      Image.asset(
                        'asset/images/062-yellow_star.png',
                        height: 18.h,
                        width: 18.w,
                      ),
                      Image.asset(
                        'asset/images/062-yellow_star.png',
                        height: 18.h,
                        width: 18.w,
                      ),
                      Image.asset(
                        'asset/images/062-yellow_star.png',
                        height: 18.h,
                        width: 18.w,
                      ),
                      Image.asset(
                        'asset/images/062-yellow_star.png',
                        height: 18.h,
                        width: 18.w,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Gap(8.h),
            Text(
              'Outstanding service at Laundrybin! Clothes return fresh, team is professional, and pickup/delivery is convenient. Highly recommend for top-notch laundry!',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  fontFamily: 'DM_Sans',
                  color: Color(0xff6E97AE)),
            )
          ],
        ),
      ),
    );
  }
}
