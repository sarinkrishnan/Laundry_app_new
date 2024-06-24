import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/2-splash-wellcome-2.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/11-home-page.dart';
import 'package:laundry_bin_app/provider_controler/login.dart';
import 'package:provider/provider.dart';

class SplashOne extends StatefulWidget {
  const SplashOne({super.key});

  @override
  State<SplashOne> createState() => _SplashOneState();
}

class _SplashOneState extends State<SplashOne> {
  @override
  void initState() {
    super.initState();
    final data = Provider.of<Loginprovider>(context, listen: false);

    Timer(Duration(seconds: 5), () async {
      final String email = await data.getEmail();
      if (email.isNotEmpty) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SplashTwo(),
            ));
      }
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
