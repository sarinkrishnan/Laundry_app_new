import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/credit_card_page/small_doubt_container.dart';

class Credit_card_visa_Card extends StatefulWidget {
  const Credit_card_visa_Card({
    super.key,
  });

  @override
  State<Credit_card_visa_Card> createState() => _Credit_card_visa_CardState();
}

class _Credit_card_visa_CardState extends State<Credit_card_visa_Card> {
  //bool value = true;
  int value=1;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: () {
          value = 1;

          setState(() {});
        },
        child: Container(
          height: 100.h,
          width: 323.w,
          decoration: BoxDecoration(
              border: Border.all(color: value==1? Color(0xff1FACF3):Colors.white),
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(8.r)),
          child: Row(
            children: [
              Gap(32.w),
              Image.asset(
                'asset/images/013-visa-card.png',
                height: 55.h,
                width: 55.w,
              ),
              Gap(25.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(22),
                  Text(
                    'Visa',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff200F33),
                        fontFamily: 'DM_Sans',
                        fontWeight: FontWeight.w700),
                  ),
                  Gap(6.h),
                  Row(
                    children: [
                      CreditcardSmallcontainer(),
                      Gap(2.w),
                      CreditcardSmallcontainer(),
                      Gap(2.w),
                      CreditcardSmallcontainer(),
                      Gap(2.w),
                      CreditcardSmallcontainer(),
                      Gap(8.w),
                      Text(
                        '1234',
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xff200F33),
                            fontFamily: 'DM_Sans',
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),Gap(12.h),
      GestureDetector(
        onTap: () {
          value = 2;
          setState(() {});
        },
        child: Container(
          height: 100.h,
          width: 323.w,
          decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              border: Border.all(color:value
              ==2? Color(0xff1FACF3):Colors.white),
              borderRadius: BorderRadius.circular(8.r)),
          child: Row(
            children: [
              Gap(32.w),
              Image.asset(
                'asset/images/014-mastercard.png',
                height: 55.h,
                width: 34.w,
              ),
              Gap(25.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(25.h),
                  Text(
                    'Mastercard',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff200F33),
                        fontFamily: 'DM_Sans',
                        fontWeight: FontWeight.w700),
                  ),
                  Gap(5.h),
                  Row(
                    children: [
                      CreditcardSmallcontainer(),
                      Gap(2.w),
                      CreditcardSmallcontainer(),
                      Gap(2.w),
                      CreditcardSmallcontainer(),
                      Gap(2.w),
                      CreditcardSmallcontainer(),
                      Gap(12.w),
                      Text(
                        '1234',
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xff200F33),
                            fontFamily: 'DM_Sans',
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      )
    ]);
  }
}
