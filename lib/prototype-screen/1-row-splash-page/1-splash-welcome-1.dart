import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/2-splash-wellcome-2.dart';

class SplashOne extends StatefulWidget {
  const SplashOne({super.key});

  @override
  State<SplashOne> createState() => _SplashOneState();
}

class _SplashOneState extends State<SplashOne> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SplashTwo(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 393.h, left: 71.w),
        child: Row(
          children: [
            Image.asset(
              'asset/images/splash-row-1.png',
              height: 38.21.h,
              width: 38.21.w,
            ),
            Gap(15.33.w),
            Text(
              'Laundrybin',
              style: TextStyle(
                  color: Color(0xff567177),
                  fontWeight: FontWeight.w700,
                  fontSize: 38.21.sp),
            )
          ],
        ),
      ),
    );
  }
}
