import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back_white_button.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/5-login.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1FACF3),
      body: Stack(
        children: [
          Positioned(
            top: 429.h,
            right: 63.w,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                'asset/images/splash-row-4.png',
                height: 399.h,
                width: 317.w,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(onTap: () {}, child: White_backArrow()),
              Gap(163.h),
              Center(
                child: Image.asset(
                  'asset/images/02-Successmark.png',
                  height: 100.h,
                  width: 100.w,
                ),
              ),Gap(25.h),
              Center(
                child: Text(
                  'Password Changed!',
                  style: TextStyle(
                      fontFamily: 'DM_Sans',
                      color: Color(0xffFFFFFF),
                      fontSize: 35.sp,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
              Gap(5.h),
              Padding(
                padding: EdgeInsets.only(left: 70.w, right: 70.w),
                child: Text(
                  "Your password has been changed successfully.",
                  style: TextStyle(
                      fontFamily: 'DM_Sans',
                      color: Color.fromARGB(221, 255, 255, 255),
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
              Gap(24.h),
              
              Center(
                child: SizedBox(
                    height: 64.h,
                    width: 333.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>WelcomebackLogin
                              (),
                            ));
                      },
                      child: Text(
                        'Back to Login ',
                        style: TextStyle(
                            fontFamily: 'DM_Sans',
                            color: Color(0xff1FACF3),
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp),
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
