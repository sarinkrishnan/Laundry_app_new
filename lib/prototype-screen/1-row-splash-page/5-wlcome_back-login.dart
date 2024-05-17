import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back_white_button.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/3-login_&_register.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/6-sent-otp.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/7-forget-password.dart';

class WelcomebackLogin extends StatelessWidget {
  const WelcomebackLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff1FACF3),
      body: Stack(
        children: [
          Positioned(
            bottom: 0.h,
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
             // Gap(50.h),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginRegister(),
                        ));
                  },
                  child: White_backArrow()),
              Gap(135.h),
              Center(
                child: Text(
                  'Welcome Back! Glad\nTo See You, Again!',
                  style: TextStyle(
                      fontFamily: 'DM_Sans',
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
              Gap(175.h),
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 27.w),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: 35.w, top: 23.h, bottom: 23.h),
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      hintText: 'Enter your email or Phone number',
                      hintStyle: TextStyle(
                          color: Color.fromARGB(97, 0, 0, 0),
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(140.r))),
                ),
              ),
              Gap(15.h),
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 27.w),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: 35.w, top: 23.h, bottom: 23.h),
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      hintText: 'enter your password',
                      hintStyle: TextStyle(
                          color: Color.fromARGB(97, 0, 0, 0),
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp),
                      suffixIcon: Image.asset(
                        'asset/images/01-eye.png',
                        scale: 3.5.sp,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(140.r))),
                ),
              ),
              Gap(10.h),
              Center(
                child: SizedBox(
                    height: 64.h,
                    width: 333.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EnterOtp(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFFFFFF)),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            fontFamily: 'DM_Sans',
                            color: Color(0xff1FACF3),
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp),
                      ),
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgetPassword(),
                      ));
                },
                child: Padding(
                  padding:  EdgeInsets.only(right: 24.w,top: 15.h),
                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontFamily: 'DM_Sans',
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(45.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(
                        fontFamily: 'DM_Sans',
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp),
                  ),
                  Text(
                    ' Register Now',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        fontFamily: 'DM_Sans',
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
