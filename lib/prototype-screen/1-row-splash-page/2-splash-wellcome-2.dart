import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/3-login_&_register.dart';

class SplashTwo extends StatelessWidget {
  const SplashTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color(0xff1FACF3),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginRegister(),
                      ));
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 310.w, top: 51.h),
                  child: Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'DM_sans',
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.w,
                  right: 56.w,
                ),
                child: Image.asset(
                  'asset/images/splash-row-2.png',
                  height: 255.h,
                  width: 293.w,
                ),
              ),
              Text(
                'Get your Laundry and\n Dry cleaning in 24 hours',
                style: TextStyle(
                    fontFamily: 'DM_sans',
                    fontWeight: FontWeight.w700,
                    fontSize: 28.sp),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding:
                    EdgeInsets.only(right: 56.w, left: 56.w,bottom: 10.h),
                child: Text(
                  "A convenient laundry solution that \nhelps protect the enviornment",
                  style: TextStyle(
                      fontFamily: 'DM_sans',
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp),
                  textAlign: TextAlign.center,
                ),
              ),
             
              Image.asset(
                'asset/images/splash-row-3.png',
                fit: BoxFit.cover,
                height: 230.h,
              ),
            ],
          ),
        ),
        Positioned(
          top: 700.h,
          left: 154.w,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginRegister(),
                  ));
            },
            child: Container(
              height: 64.h,
              width: 64.w,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 43, 135, 144),
                    blurRadius: 14.r,
                    offset: Offset(0.w, 6.h))
              ], color: Color(0xff34D5E5), shape: BoxShape.circle),
              child: Icon(
                Icons.arrow_forward,
                color: Color(0xffFFFFFF),
                size: 30.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
