import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 22.w),
        child: Column(
          children: [
            Gap(44.h),
            Row(
              children: [
                Gap(5.w),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.keyboard_backspace_sharp,
                    size: 30.sp,
                  ),
                ),
                Gap(120.w),
                Text(
                  'Faq',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      fontFamily: 'DM_Sans',
                      color: Color(0xff141521)),
                )
              ],
            ),
            Gap(25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'What laundry services do you offer?',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      fontFamily: 'DM_Sans',
                      color: Color(0xff141521)),
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Color(0xff1FACF3),
                )
              ],
            ),
            Gap(12.h),
            Text(
              'We offer comprehensive laundry services, including wash, dry, and fold options for various garments and linens. Our experienced team ensures top-quality.',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  fontFamily: 'DM_Sans',
                  color: Color(0xff141521)),
              textAlign: TextAlign.justify,
            ),
            Gap(16.h),
            FaqtextRow(
              text: 'How long does it take to get iron done?',
            ),
            Gap(16.h),
            FaqtextRow(text: 'Do you offer pickup and delivery?'),
            Gap(16.h),
            FaqtextRow(text: 'What are your pricing options?'),
            Gap(16.h),
            FaqtextRow(text: 'How do you ensure the safety laundry?'),
            Gap(16.h),
            FaqtextRow(text: 'Do you provide eco-friendly options?'),
            // Gap(323.h),
            // SizedBox(
            //   width: 333.w,
            //   height: 64.h,
            //   child: ElevatedButton(
            //       onPressed: () {},
            //       style: ElevatedButton.styleFrom(
            //           backgroundColor: Color(0xff1FACF3)),
            //       child: Text(
            //         '+Add',
            //         style: TextStyle(
            //             fontWeight: FontWeight.w700,
            //             fontSize: 16.sp,
            //             fontFamily: 'DM_Sans',
            //             color: Color(0xffFFFFFF)),
            //       )),
            // )
          ],
        ),
      ),
    );
  }
}

class FaqtextRow extends StatelessWidget {
  const FaqtextRow({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              fontFamily: 'DM_Sans',
              color: Color(0xff141521)),
        ),
        Icon(
          Icons.keyboard_arrow_right_outlined,
          size: 25.sp,
        )
      ],
    );
  }
}
