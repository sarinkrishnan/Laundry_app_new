import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PrivacypolicyPage extends StatelessWidget {
  const PrivacypolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(45.h),
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
                Gap(80.w),
                Text(
                  'Privacy policy',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      fontFamily: 'DM_Sans',
                      color: Color(0xff141521)),
                )
              ],
            ),
            Gap(40.h),
            Text(
              'Data Privacy and Protection',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  fontFamily: 'DM_Sans',
                  color: Color(0xff200F33)),
            ),
            Gap(17.h),
            Text(
              'At Laundrybin, we take your privacy seriously and are committed to protecting your personal information. Any data collected, such as your name, contact details, and laundry preferences, is used solely for the purpose of providing our laundry services and improving your customer experience. We do not share your information with third parties unless required by law or with your explicit consent. Our website may use cookies to enhance your browsing experience, but these do not collect personally identifiable information. We employ industry-standard security measures to safeguard your data against unauthorized access, alteration, or disclosure. By using our services, you consent to the collection and use of your information as outlined in this privacy policy.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  fontFamily: 'DM_Sans',
                  color: Color(0xff200F33)),
            ),
            Gap(30.h),
            Text(
              'Information Collection and Usage',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  fontFamily: 'DM_Sans',
                  color: Color(0xff200F33)),
            ),
            Gap(13.h),
            Text(
              'At [Laundry Shop Name], we collect personal information from you when you use our services or interact with our website. This information may include your name, contact details, payment information, and preferences. We use this information to provide and improve our laundry services, personalize your experience, and communicate with you about your orders. Rest assured, we never sell or share your information with third parties for marketing purposes without your consent. Your privacy and security are our top priorities.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  fontFamily: 'DM_Sans',
                  color: Color(0xff200F33)),
            )
          ],
        ),
      ),
    );
  }
}
