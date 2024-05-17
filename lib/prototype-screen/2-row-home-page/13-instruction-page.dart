import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/8-instrection-page/8-row-1.dart';
import 'package:laundry_bin_app/extract_items/8-instrection-page/8-row-2.dart';
import 'package:laundry_bin_app/extract_items/8-instrection-page/8-row-3.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back-black_button.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/14-summary-page.dart';

class InstrecTions extends StatelessWidget {
  const InstrecTions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffECF3F6),
        title: Text(
          'Instructions',
          style: TextStyle(
              fontSize: 20.sp,
              color: Color(0xff141521),
              fontFamily: 'DM_Sans',
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Black_Backarrow()),
      ),
      backgroundColor: Color(0xffECF3F6),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20.h),
              Text(
                'Water',
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff141521),
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.w700),
              ),
              Gap(22.h),
              RowOne(),
              Gap(40.h),
              Text(
                'Fabric Softener',
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff141521),
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.w700),
              ),
              Gap(24.h),
              RowTwo(),
              Gap(40.h),
              Text(
                ' Detergent',
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff141521),
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.w700),
              ),
              Gap(24.h),
              RowThree(),
              Gap(40.h),
              TextField(
                style: TextStyle(color: Colors.black),
                maxLines: 7,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffFFFFFF),
                    hintText: 'Enter notes here',
                    contentPadding: EdgeInsets.only(top: 40.h, left: 20.w),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(221, 110, 149, 174),
                        fontSize: 16.sp,
                        fontFamily: 'DM_Sans',
                        fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12.r))),
              ),
              Gap(43.h),
              Center(
                child: SizedBox(
                    height: 64.h,
                    width: 333.w,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SummaryPage(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1FACF3)),
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              fontFamily: 'DM_Sans',
                              color: Color(0xffFFFFFF)),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
