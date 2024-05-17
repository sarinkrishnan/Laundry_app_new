import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/9-summary-page/9-row-date_time.dart';
import 'package:laundry_bin_app/extract_items/9-summary-page/RowPrice.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back-black_button.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/12-washing-page.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/16-credit_card-page.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/15-offers-page.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/17-upi-page.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/18-map1-location-page.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/20-booked-last-page.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  int selected = 1;
  bool on = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffECF3F6),
          title: Text(
            'Summary',
            style: TextStyle(
                fontSize: 20.sp,
                color: Color(0xff141521),
                fontFamily: 'DM_Sans',
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WashIng(),
                    ));
              },
              child: Black_Backarrow())),
      backgroundColor: Color(0xffECF3F6),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(12.h),
              Container(
                height: 260.h,
                width: 333.w,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(12.r)),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 16.w, top: 16.h, right: 12.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pickup Point',
                            style: TextStyle(
                                fontFamily: 'DM_Sans',
                                fontSize: 16.500.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff1FACF3)),
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MaplocationPage(),
                                    ));
                              },
                              child: Icon(Icons.add))
                        ],
                      ),
                    ),
                    Gap(4.h),
                    Container(
                      height: 97.h,
                      width: 301.w,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          border: Border.all(
                            color: Color(0xff1FACF3),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(12.r)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 8.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Home',
                                  style: TextStyle(
                                      fontFamily: 'DM_Sans',
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff200F33)),
                                ),
                                Image.asset(
                                  'asset/images/36-edit-pen.png',
                                  height: 20.h,
                                  width: 20.w,
                                )
                              ],
                            ),
                            Text(
                              '19 Cross, between Hufuf and, Khobar\n676552, India \n+91 8415698625',
                              style: TextStyle(
                                  fontFamily: 'DM_Sans',
                                  fontSize: 14.500.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff200F33)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(10.h),
                    Container(
                      height: 97.h,
                      width: 301.w,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          border: Border.all(
                            color: Color(0xffE8E8E8),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(12.r)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 8.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Office',
                                  style: TextStyle(
                                      fontFamily: 'DM_Sans',
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff200F33)),
                                ),
                                Image.asset(
                                  'asset/images/36-edit-pen.png',
                                  height: 20.h,
                                  width: 20.w,
                                )
                              ],
                            ),
                            Text(
                              '19 Cross, between Hufuf and, Khobar\n676552, India \n+91 8415698625',
                              style: TextStyle(
                                  fontFamily: 'DM_Sans',
                                  fontSize: 14.500.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff200F33)),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Gap(12.h),
              Container(
                height: 120.h,
                width: 333.w,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(12.r)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(16.h),
                      Text(
                        'Pick Up ',
                        style: TextStyle(
                          color: Color(0xff1FACF3),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'DM_Sans',
                        ),
                      ),
                      Gap(12.h),
                      RowaDatetime(),
                    ],
                  ),
                ),
              ),
              Gap(13.h),
              Container(
                height: 230.h,
                width: 333.w,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(12.r)),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.w,
                    top: 6.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(15.h),
                      Text(
                        'Delivery ',
                        style: TextStyle(
                          color: Color(0xff1FACF3),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'DM_Sans',
                        ),
                      ),
                      Gap(4.h),
                      Row(
                        children: [
                          SizedBox(
                            width: 20.w,
                            child: Radio(
                              value: 1,
                              groupValue: selected,
                              onChanged: (value) {
                                selected = value!;
                                setState(() {});
                              },
                              activeColor: Color(0xff1FACF3),
                            ),
                          ),
                          Gap(14.w),
                          Text(
                            '19 Cross, between Hufuf and, Khobar\n676552, India | +91 8415698625',
                            style: TextStyle(
                                color: Color(0xff141521),
                                fontFamily: 'DM_Sans',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20.w,
                            child: Radio(
                              value: 2,
                              groupValue: selected,
                              onChanged: (value) {
                                selected = value!;
                                setState(() {});
                              },
                              activeColor: Color(0xff1FACF3),
                            ),
                          ),
                          Gap(14.w),
                          Text(
                            'Collect from store',
                            style: TextStyle(
                                color: Color(0xff141521),
                                fontFamily: 'DM_Sans',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Gap(8.h),
                      RichText(
                        text: TextSpan(
                          text: 'Expected Delivery :',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontFamily: 'DM_Sans',
                          ),
                          children: [
                            TextSpan(
                                text: ' 21 Dec 2024',
                                style: TextStyle(
                                    fontFamily: 'DM_Sans',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff6E97AE))),
                          ],
                        ),
                      ),
                      Gap(9.h),
                      Padding(
                        padding: EdgeInsets.only(right: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Express Delivery',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                  fontFamily: 'DM_Sans',
                                  color: Color(0xff141521)),
                            ),
                            Switch(
                              value: on,
                              onChanged: (value) {
                                on = value;
                                setState(() {});
                              },
                              activeTrackColor: Color(0xff1FACF3),
                              inactiveTrackColor: Color(0xffFFFFFF),
                              inactiveThumbColor: Color(0xff1FACF3),
                              trackOutlineColor:
                                  MaterialStatePropertyAll(Color(0xff1FACF3)),
                            )
                            // Switch.adaptive(
                            //   activeColor: Color(0xff1FACF3),,
                            //   value: on,
                            //   onChanged: (bool value) {
                            //     setState(() {
                            //       on = value;
                            //     });
                            //   },
                            // )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(16.h),
              Container(
                width: 333.w,
                height: 112.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Color(0xffFFFFFF)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Coupon',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            fontFamily: 'DM_Sans',
                            color: Color(0xff1FACF3)),
                      ),
                      Gap(8.h),
                      Row(
                        children: [
                          SizedBox(
                            height: 48,
                            width: 145.w,
                            child: TextField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  hintText: 'Enter code',
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(42, 66, 65, 65)),
                                  contentPadding:
                                      EdgeInsets.only(top: 14.h, left: 38.w),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.r),
                                  )),
                            ),
                          ),
                          Gap(11.w),
                          Container(
                            height: 48.h,
                            width: 145.w,
                            decoration: BoxDecoration(
                                color: Color(0xff1FACF3),
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(
                                    color: Color.fromARGB(95, 110, 150, 174))),
                            child: Center(
                                child: Text(
                              'APPLY CODE',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  fontFamily: 'DM_Sans',
                                  color: Color.fromARGB(142, 255, 255, 255)),
                            )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(16.h),
              Container(
                width: 333.w,
                height: 155.h,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(12.r)),
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 16.h),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OffersPage(),
                              ));
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/images/011-fi.png',
                              height: 18.h,
                              width: 19.w,
                            ),
                            Gap(8.w),
                            Text(
                              'Offers',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                  fontFamily: 'DM_Sans',
                                  color: Color(0xff1FACF3)),
                            )
                          ],
                        ),
                      ),
                      Gap(4.h),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OffersPage(),
                                ));
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 91.h,
                                width: 242.w,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(23, 110, 150, 174),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 12.w, top: 10.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Free delivery on every orders for\n6 months',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.sp,
                                            fontFamily: 'DM_Sans',
                                            color: Color(0xff141521)),
                                      ),
                                      Text(
                                        '\$499',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 22.sp,
                                            fontFamily: 'DM_Sans',
                                            color: Color(0xff6E97AE)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Gap(12.w),
                              Container(
                                height: 91.h,
                                width: 242.w,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(23, 110, 150, 174),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 12.w, top: 10.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Free delivery on every orders for\n6 months',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.sp,
                                            fontFamily: 'DM_Sans',
                                            color: Color(0xff141521)),
                                      ),
                                      Text(
                                        '\$299',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 22.sp,
                                            fontFamily: 'DM_Sans',
                                            color: Color(0xff6E97AE)),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Gap(16.h),
              Stack(
                children: [
                  Image.asset(
                    'asset/images/37-summary_Subtract.png',
                    height: 283.h,
                    width: MediaQuery.of(context).size.width.w,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(13.h),
                        Text(
                          'Receipt',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              fontFamily: 'DM_Sans',
                              color: Color(0xff1FACF3)),
                        ),
                        Gap(9.h),
                        RowPrice(
                          text: 'Shirt',
                          count: '   x2',
                          price: '\$40',
                        ),
                        Gap(7.h),
                        RowPrice(text: 'T-Shirt', count: 'x2', price: '\$40'),
                        Gap(7.h),
                        RowPrice(text: 'Shorts', count: 'x1', price: '\$40'),
                        Gap(5.h),
                        Divider(
                          color: Color.fromARGB(193, 245, 245, 245),
                        ),
                        Gap(4.h),
                        RowPrice(
                            text: 'Delivery Charge ', count: '', price: '\$50'),
                        Gap(7.h),
                        RowPrice(text: 'Tax', count: '', price: '\$50'),
                        Gap(8.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Coupon Reduction',
                              style: TextStyle(
                                  fontFamily: 'DM_Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                  color: Color(0xff30D472)),
                            ),
                            Text(
                              '\$50',
                              style: TextStyle(
                                  fontFamily: 'DM_Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                  color: Color(0xff30D472)),
                            )
                          ],
                        ),
                        Divider(
                          color: Color.fromARGB(182, 245, 245, 245),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                  fontFamily: 'DM_Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15.sp,
                                  color: Color(0xff200F33)),
                            ),
                            Text(
                              '\$110',
                              style: TextStyle(
                                  fontFamily: 'DM_Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15.sp,
                                  color: Color(0xff200F33)),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Gap(28.h),
              Text(
                'Payment method',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    fontFamily: 'DM_Sans',
                    color: Color(0xff200F33)),
              ),
              Gap(16.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookingPage(),
                      ));
                },
                child: Container(
                  height: 64.h,
                  width: 333.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Color(0xffFFFFFF)),
                  child: Row(
                    children: [
                      Gap(3.w),
                      Container(
                        height: 58.h,
                        width: 58.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color.fromARGB(54, 4, 234, 255)),
                        child: Image.asset(
                          'asset/images/38-summary-wallet.png',
                          scale: 3.5.sp,
                        ),
                      ),
                      Gap(23.w),
                      Text(
                        'COD',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            fontFamily: 'DM_Sans',
                            color: Color(0xff200F33)),
                      ),
                      Gap(177.w),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20.sp,
                      )
                    ],
                  ),
                ),
              ),
              Gap(12.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreditcardPage(),
                      ));
                },
                child: Container(
                  height: 64.h,
                  width: 333.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Color(0xffFFFFFF)),
                  child: Row(
                    children: [
                      Gap(3.w),
                      Container(
                        height: 58.h,
                        width: 58.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color.fromARGB(53, 0, 170, 255)),
                        child: Image.asset(
                          'asset/images/39-summary-card.png',
                          scale: 3.5.sp,
                        ),
                      ),
                      Gap(23.w),
                      Text(
                        'Credit Card',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            fontFamily: 'DM_Sans',
                            color: Color(0xff141521)),
                      ),
                      Gap(135.w),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20.sp,
                      )
                    ],
                  ),
                ),
              ),
              Gap(10.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UpiPage(),
                      ));
                },
                child: Container(
                  height: 64.h,
                  width: 333.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Color(0xffFFFFFF)),
                  child: Row(
                    children: [
                      Gap(3.w),
                      Container(
                        height: 58.h,
                        width: 58.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xffFDECD2)),
                        child: Image.asset(
                          'asset/images/012-fi.png',
                          scale: 3.5.sp,
                        ),
                      ),
                      Gap(23.w),
                      Text(
                        'UPI',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            fontFamily: 'DM_Sans',
                            color: Color(0xff141521)),
                      ),
                      Gap(188.w),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20.sp,
                      )
                    ],
                  ),
                ),
              ),
              Gap(18.h),
            ],
          ),
        ),
      ),
    );
  }
}
