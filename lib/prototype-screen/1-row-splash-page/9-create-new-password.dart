import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back_white_button.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/10-password-changed.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/5-wlcome_back-login.dart';

class CreatenewPassword extends StatelessWidget {
  const CreatenewPassword({super.key});

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
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WelcomebackLogin(),
                          ));
                    },
                    child: White_backArrow()),
                Gap(110.h),
                Center(
                  child: Text(
                    'Create new password',
                    style: TextStyle(
                        fontFamily: 'DM_Sans',
                        color: Color(0xffFFFFFF),
                        fontSize: 34.sp,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                Gap(34.h),
                Padding(
                  padding: EdgeInsets.only(left: 45.w, right: 45.w),
                  child: Text(
                    "Your new password must be unique from those previously used.",
                    style: TextStyle(
                        fontFamily: 'DM_Sans',
                        color: Color(0xffFFFFFF),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
                Gap(63.h),
                Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 27.w),
                  child: TextField(style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 35.w, top: 23.h, bottom: 23.h),
                        filled: true,
                        fillColor: Color(0xffFFFFFF),
                        hintText: 'Enter new password',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(108, 131, 145, 161),
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
                        hintText: 'Confirm password',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(108, 131, 145, 161),
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(140.r))),
                  ),
                ),
                Gap(15.h),
                Center(
                  child: SizedBox(
                      height: 64.h,
                      width: 333.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PasswordChanged(),
                              ));
                        },
                        child: Text(
                          'Reset Password',
                          style: TextStyle(
                              fontFamily: 'DM_Sans',
                              color: Color(0xff1FACF3),
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp),
                        ),
                      )),
                ),
                Gap(202.h),
                Center(
                  child: RichText(
                    text: TextSpan(
                        text: '  Didn’t received code?  ',
                        style: TextStyle(
                            fontFamily: 'DM_Sans',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF)),
                        children: [
                          TextSpan(
                              text: 'Resend',
                              style: TextStyle(decoration: TextDecoration.underline,
                                color: Color(0xffFFFFFF),
                                fontFamily: 'DM_Sans',
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w700,
                              )),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
