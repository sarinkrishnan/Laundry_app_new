import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/app_bar/app_bar.dart';
import 'package:laundry_bin_app/extract_items/credit_card_page/bottum_elivatedbottun.dart';
import 'package:laundry_bin_app/extract_items/credit_card_page/text_feild_data.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back-black_button.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/14-summary-page.dart';

class UpiPage extends StatefulWidget {
  const UpiPage({super.key});

  @override
  State<UpiPage> createState() => _UpiPageState();
}

TextEditingController upi_id = TextEditingController();

bool ischeckedd = false;

class _UpiPageState extends State<UpiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffECF3F6),
        title: AppbarAll(text: 'UPI'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SummaryPage(),
                  ));
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
              Gap(15.h),
              Container(
                height: 100.h,
                width: 323.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff1FACF3)),
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(8.r)),
                child: Row(
                  children: [
                    Gap(32.w),
                    Image.asset(
                      'asset/images/015-google-pay.png',
                      height: 36.h,
                      width: 36.w,
                    ),
                    Gap(34.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(30.h),
                        Text(
                          'Google pay',
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff200F33),
                              fontFamily: 'DM_Sans',
                              fontWeight: FontWeight.w700),
                        ),
                        Gap(2.h),
                        Text(
                          '8989898989@ybl',
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff6E97AE),
                              fontFamily: 'DM_Sans',
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Gap(12.h),
              Container(
                height: 100.h,
                width: 323.w,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(8.r)),
                child: Row(
                  children: [
                    Gap(32.w),
                    Image.asset(
                      'asset/images/016-phonepe-logo.png',
                      height: 36.h,
                      width: 36.w,
                    ),
                    Gap(34.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(28.h),
                        Text(
                          'Phone pay',
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff200F33),
                              fontFamily: 'DM_Sans',
                              fontWeight: FontWeight.w700),
                        ),
                        Gap(2.h),
                        Text(
                          'user@ubl',
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff6E97AE),
                              fontFamily: 'DM_Sans',
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Gap(24.h),
              Text(
                'Or add UPI ID',
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff200F33),
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.w700),
              ),
              Gap(16.h),
              TextfeildData(text_controler: upi_id, text: 'Enter UPI ID'),
              Gap(24.h),
              Row(
                children: [
                  Checkbox(
                    activeColor: Color(0xff1FACF3),
                    value: ischeckedd,
                    onChanged: (value) {
                      ischeckedd = value!;

                      setState(() {});
                    },
                  ),
                  Gap(2.w),
                  Text(
                    'Save for future',
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xff200F33),
                        fontFamily: 'DM_Sans',
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Gap(226.h),
              Bottum_elivatedBottun(text: 'pay', text1: '\$499')
            ],
          ),
        ),
      ),
    );
  }
}
