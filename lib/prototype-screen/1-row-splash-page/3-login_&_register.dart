import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/4-register-page.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/5-wlcome_back-login.dart';

class LoginRegister extends StatelessWidget {
  const LoginRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1FACF3),
      body: Stack(children: [
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
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 71.w,top:286.h ),
              child: Row(
                children: [
                  Image.asset(
                    'asset/images/splash-row-1.png',
                    height: 38.21.h,
                    width: 38.21.w,
                  ),Gap(15.w),
                  Text(
                    'Laundrybin',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 38.21.sp),
                  )
                ],
              ),
            ),Gap(328.h),
            Center(
              child: SizedBox(
                  height: 64.h,
                  width: 333.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WelcomebackLogin(),
                          ));
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(
                          fontFamily: 'DM_Sans',
                          color: Color(0xff1FACF3),
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp),
                    ),
                  )),
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
                            builder: (context) =>RegisterPage(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Color(0xffFFFFFF),
                      ),
                      backgroundColor: Color(0xff1FACF3),
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontFamily: 'DM_Sans',
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp),
                    ),
                  )),
            )
          ],
        ),
      ]),
    );
  }
}
