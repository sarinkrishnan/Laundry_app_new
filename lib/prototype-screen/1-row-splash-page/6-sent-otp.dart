import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back_white_button.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/5-wlcome_back-login.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/11-home-page.dart';
import 'package:pinput/pinput.dart';

class EnterOtp extends StatelessWidget {
  const EnterOtp({super.key});

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
                            builder: (context) => WelcomebackLogin(),
                          ));
                    },
                    child: White_backArrow()),
                Gap(71.h),
                Center(
                  child: Text(
                    'We Have Sent\nYou An OTP',
                    style: TextStyle(
                        fontFamily: 'DM_Sans',
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                Gap(25.h),
                Center(
                  child: Pinput(
                    length: 4,
                    keyboardType: TextInputType.number,
                    separatorBuilder: (index) => Gap(20.w),
                    defaultPinTheme: PinTheme(
                        width: 69.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(9.r))),
                  ),
                ),
                Gap(17.h),
                Center(
                  child: Opacity(
                    opacity: .8,
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Don’t recive OTP?  ',
                          style: TextStyle(
                              fontFamily: 'DM_Sans',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: 'RESENT OTP',
                          style: TextStyle(
                              fontFamily: 'DM_Sans',
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp))
                    ])),
                  ),
                ),
                Gap(410.h),
                Center(
                  child: SizedBox(
                      height: 64.h,
                      width: 333.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ));
                        },
                        child: Text(
                          'Next',
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
          ),
        ],
      ),
    );
  }
}
