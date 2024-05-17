import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back-black_button.dart';

class OffersPage extends StatefulWidget {
  const OffersPage({super.key});

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      appBar: AppBar(
        backgroundColor: Color(0xffECF3F6),
        title: Text(
          'Offers',
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              fontFamily: 'DM_Sans',
              color: Color(0xff141521)),
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Black_Backarrow()),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(15.h),
            Container(
              height: 91.h,
              width: 333.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Color(0xffFFFFFFF)),
              child: Padding(
                padding: EdgeInsets.only(left: 12.w, top: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Express delivery on every orders for\n6 months',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              fontFamily: 'DM_Sans',
                              color: Color(0xff141521)),
                        ),
                        Gap(1.h),
                        Text(
                          '\$499',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 21.sp,
                              fontFamily: 'DM_Sans',
                              color: Color(0xff6E97AE)),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 32.h),
                      child: Checkbox(
                        activeColor: Color(0xff1FACF3),
                        value: selected==1?true:false,
                        onChanged: (value) {
                          selected =value!?1:0;

                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(12.h),
            Container(
              height: 91.h,
              width: 333.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Color(0xffFFFFFFF)),
              child: Padding(
                padding: EdgeInsets.only(top: 10.h, left: 12.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Express delivery on every orders for\n6 months',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              fontFamily: 'DM_Sans',
                              color: Color(0xff141521)),
                        ),
                        Text(
                          '\$499',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 21.sp,
                              fontFamily: 'DM_Sans',
                              color: Color(0xff6E97AE)),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 34.h),
                      child: Checkbox(
                        activeColor: Color(0xff1FACF3),
                        value: selected==2?true:false,
                        onChanged: (value) {
                          selected = value!?2:0;

                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(24.h),
            Text(
              'Payment method',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  fontFamily: 'DM_Sans',
                  color: Color(0xff200F33)),
            ),
            Gap(16.h),
            Container(
              height: 64.h,
              width: 333.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: Color(0xffFFFFFF)),
              child: Row(
                children: [
                  Gap(3.w),
                  Container(
                    height: 58.h,
                    width: 58.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color.fromARGB(53, 0, 170, 255)),
                    child: Image.asset(
                      'asset/images/39-summary-card.png',
                      scale: 3.5.sp,
                    ),
                  ),
                  Gap(23.w),
                  Text(
                    'Credit Card',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        fontFamily: 'DM_Sans',
                        color: Color(0xff141521)),
                  ),
                  Gap(121.w),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20.sp,
                  )
                ],
              ),
            ),
            Gap(12.h),
            Container(
              height: 64.h,
              width: 333.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: Color(0xffFFFFFF)),
              child: Row(
                children: [
                  Gap(3.w),
                  Container(
                    height: 58.h,
                    width: 58.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xffFDECD2)),
                    child: Image.asset(
                      'asset/images/012-fi.png',
                      scale: 3.5.sp,
                    ),
                  ),
                  Gap(23.w),
                  Text(
                    'UPI',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        fontFamily: 'DM_Sans',
                        color: Color(0xff141521)),
                  ),
                  Gap(187.w),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20.sp,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
