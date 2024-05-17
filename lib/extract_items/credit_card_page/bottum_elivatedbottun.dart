import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/20-booked-last-page.dart';

class Bottum_elivatedBottun extends StatelessWidget {
  const Bottum_elivatedBottun({
    super.key,
    required this.text,
    required this.text1,
  });
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookingPage(),
              ));
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff1FACF3),
            padding: EdgeInsets.only(bottom: 22.w, top: 22.h)),
        child: Padding(
          padding: EdgeInsets.only(
            left: 128.w,
          ),
          child: Row(
            children: [
              Text(
                text,
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xffFFFFFF),
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.w700),
              ),
              Text(
                text1,
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Color(0xffFFFFFF),
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ));
  }
}
