import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/11-home-page.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1FACF3),
      body: Column(
        children: [
          Gap(225.h),
          Center(
            child: Image.asset(
              'asset/images/021-booking-image 3.png',
              height: 226.h,
              width: 253.w,
            ),
          ),
          Gap(43.h),
          Center(
            child: Text(
              'Your Booking is\n Confirmed',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 34.sp,
                  color: Color(0xffFFFFFF),
                  fontFamily: 'DM_Sans',
                  fontWeight: FontWeight.w700),
            ),
          ),
          Gap(146.h),
          SizedBox(
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
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFFFFFFF)),
                child: Text(
                  'Back To home',
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Color(0xff1FACF3),
                      fontFamily: 'DM_Sans',
                      fontWeight: FontWeight.w700),
                )),
          )
        ],
      ),
    );
  }
}
