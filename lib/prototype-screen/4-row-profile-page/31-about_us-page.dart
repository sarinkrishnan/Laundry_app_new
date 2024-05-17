import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AbountusPage extends StatelessWidget {
  const AbountusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Column(
          children: [
            Gap(50.h),
            Row(
              children: [
                Gap(5.w),
                GestureDetector(onTap: () {
                  Navigator.pop(context);
                },
                  child: Icon(
                    Icons.keyboard_backspace,
                    size: 30.sp,
                  ),
                ),
                Gap(90.w),
                Text(
                  'About Us',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      fontFamily: 'DM_Sans',
                      color: Color(0xff141521)),
                )
              ],
            ),
            Gap(45.h),
            Row(
              children: [
                Image.asset(
                  'asset/images/about_us.png',
                  height: 38.h,
                  width: 38.w,
                ),
                Gap(15.w),
                Image.asset('asset/images/Laundrybin.png')
              ],
            ),
            Gap(13.h),
            Text(
              'At Laundrybin, we are passionate about providing top-quality laundry services tailored to meet the unique needs of our customers. With years of experience in the industry, our dedicated team is committed to delivering impeccable results and exceptional customer service. From wash, dry, and fold services to specialized treatments for delicate fabrics, we handle each garment with the utmost care and attention to detail. Our state-of-the-art equipment and eco-friendly practices ensure that your laundry is not only clean but also handled responsibly. Conveniently located in the heart of [Location], we strive to make the laundry process hassle-free and efficient for everyone. Trust us with your laundry needs, and experience the difference here. we understand that convenience is key in today"s fast-paced world. That"s why we offer convenient pickup and delivery services, ensuring that your laundry experience fits seamlessly into your busy schedule. Our friendly and professional staff are here to assist you every step of the way, whether you have special requests or simply need advice on garment care. As a locally owned and operated business, we take pride in serving our community with integrity and reliability. Discover the ease and satisfaction of outsourcing your laundry to [Laundry Shop Name], where quality meets convenience.',
           textAlign: TextAlign.justify,   style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  fontFamily: 'DM_Sans',
                  color: Color.fromARGB(255, 2, 1, 3)),
            )
          ],
        ),
      ),
    );
  }
}
