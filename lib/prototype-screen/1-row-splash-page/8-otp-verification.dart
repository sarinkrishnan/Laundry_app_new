import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back_white_button.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/7-forget-password.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/9-create-new-password.dart';
import 'package:pinput/pinput.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetPassword(),
                          ));
                    },
                    child: White_backArrow()),
                Gap(125.h),
                Center(
                  child: Text(
                    'OTP Verification',
                    style: TextStyle(
                        fontFamily: 'DM_Sans',
                        color: Color(0xffFFFFFF),
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                Gap(30.h),
                Padding(
                  padding: EdgeInsets.only(left: 60.w, right: 60.w),
                  child: Text(
                    "Enter the verification code we just sent on your email address.",
                    style: TextStyle(
                        fontFamily: 'DM_Sans',
                        color: Color(0xffFFFFFF),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
                Gap(58.h),
                Center(
                    child: Pinput(
                  length: 4,
                  keyboardType: TextInputType.number,
                  separatorBuilder: (index) => Gap(20.w),
                  defaultPinTheme: PinTheme(
                      height: 60.h,
                      width: 69.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.r),
                          color: Color(0xffF7F8F9))),
                )),
                Gap(30.h),
                Center(
                  child: SizedBox(
                      height: 64.h,
                      width: 333.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CreatenewPassword(),
                              ));
                        },
                        child: Text(
                          'Verify',
                          style: TextStyle(
                              fontFamily: 'DM_Sans',
                              color: Color(0xff1FACF3),
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp),
                        ),
                      )),
                ),
                Gap(275.h),
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
                              style: TextStyle(
                                decoration: TextDecoration.underline,
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
