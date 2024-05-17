import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/01-splash_page-prototype/01-textfeild_splash_pages.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back_white_button.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/5-wlcome_back-login.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/11-home-page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController id_number = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      backgroundColor: Color(0xff1FACF3),
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(top: 425.h),
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
                    Navigator.pop(context);
                  },
                  child: White_backArrow()),
              Gap(90.h),
              Center(
                child: Text(
                  'Hey There !\nWelcomer',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontFamily: 'DM_Sans',
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
              Gap(90.h),
              TextfeildText(
                text: 'Enter Name',
                controler: name,
              ),
              Gap(15.h),
              TextfeildText(
                controler: id_number,
                text: 'Enter Email ID or Phone Number',
              ),
              Gap(15.h),
              TextfeildText(
                text: 'Enter your password',
                controler: password,
              ),
              Gap(15.h),
              TextfeildText(
                text: 'Confirm password',
                controler: password,
              ),
              Gap(15.h),
              Center(
                child: SizedBox(
                    height: 63.h,
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
                        'Register',
                        style: TextStyle(
                            fontFamily: 'DM_Sans',
                            color: Color(0xff1FACF3),
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp),
                      ),
                    )),
              ),
              Gap(36.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '     Already have an account?',
                    style: TextStyle(
                        fontFamily: 'DM_Sans',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFFFFFF)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WelcomebackLogin(),
                          ));
                    },
                    child: Text(
                      '  Log In',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'DM_Sans', 
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
