import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/21-order_page/Orderpage_Container.dart';
import 'package:laundry_bin_app/extract_items/21-order_page/ratingSheet.dart';
import 'package:laundry_bin_app/prototype-screen/3-row-calender-page/22-id_152589-page.dart';
import 'package:laundry_bin_app/prototype-screen/3-row-calender-page/23-id_152589-page.dart';
import 'package:laundry_bin_app/prototype-screen/3-row-calender-page/24-tracking-page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  bool fullrating = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Column(children: [
          Gap(62.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order',
                style: TextStyle(
                    fontSize: 24.sp,
                    color: Color(0xff141521),
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.w700),
              ),
              Container(
                  height: 37.h,
                  width: 123.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.r),
                      color: Color(0xffFFFFFF)),
                  child: Row(children: [
                    Gap(9.w),
                    Text(
                      'All Orders',
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: Color(0xff6E97AE),
                          fontFamily: 'DM_Sans',
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 25.sp,
                      color: Color(0xff6E97AE),
                    )
                  ]))
            ],
          ),
          Gap(32.h),
          Orderpage_Container(
            onTap2: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IdPage(),
                  ));
            },
            onTap1: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TrackingPage(),
                  ));
            },
            image: 'asset/images/022-washing-machine.png',
            text: 'Washing',
            containertext: "Tracking",
            text2: '',
            colors: Color(0xffF3DD0F),
            text1: 'On-going',
          ),
          Gap(18.h),
          Orderpage_Container(
              onTap2: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IdpageTwo(),
                    ));
              },
              onTap1: () {
                ratingSheet(context);
              },
              image: 'asset/images/030-iron_box.png',
              text: "Ironing",
              text1: 'Completed',
              colors: Color(0xff30D472),
              containertext: "Add Rating",
              text2: "\$499"),
          Gap(18.h),
          Container(
              width: 333.w,
              height: 189.h,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(12.r)),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.w, right: 10.w, top: 17.h),
                  child: Row(
                    children: [
                      Container(
                        height: 123.h,
                        width: 88.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21.r),
                            color: Color.fromARGB(38, 85, 164, 197)),
                        child: Center(
                            child: Image.asset(
                          'asset/images/022-washing-machine.png',
                          height: 60.h,
                          width: 47.w,
                        )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 7.h),
                        child: Container(
                          height: 120.h,
                          width: 220.w,
                          decoration: BoxDecoration(color: Color(0xffFFFFFF)),
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.w, right: 10.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Washing",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Color(0xff141521),
                                          fontFamily: 'DM_Sans',
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Container(
                                      height: 23.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xffD14646),
                                        borderRadius:
                                            BorderRadius.circular(51.r),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "Cancelled",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Color(0xffFFFFFF),
                                            fontFamily: 'DM_Sans',
                                            fontWeight: FontWeight.w500),
                                      )),
                                    ),
                                  ],
                                ),
                                Gap(9.h),
                                SizedBox(
                                    width: 210.w,
                                    child: DottedLine(
                                      dashColor: Color(0xffE6E6E6),
                                      lineThickness: 2,
                                    )),
                                Gap(7.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Shirt",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff141521),
                                          fontFamily: 'DM_Sans',
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      "x2",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff141521),
                                          fontFamily: 'DM_Sans',
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Gap(1.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "T-Shirt",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff141521),
                                          fontFamily: 'DM_Sans',
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      "x2",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff141521),
                                          fontFamily: 'DM_Sans',
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Gap(1.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Shorts",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff141521),
                                          fontFamily: 'DM_Sans',
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      "x1",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff141521),
                                          fontFamily: 'DM_Sans',
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Gap(1.h),
                                Text(
                                  '+2 Items',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Color(0xff6E97AE),
                                      fontFamily: 'DM_Sans',
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Gap(5.h),
                Row(
                  children: [
                    Gap(19.w),
                    Padding(
                      padding: EdgeInsets.only(top: 3.h),
                      child: Column(
                        children: [
                          Text(
                            '20 Dec 2024',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Color(0xff121212),
                                fontFamily: 'DM_Sans',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Gap(11.w),
                    Container(
                      height: 29.h,
                      width: 212.w,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(40, 19, 221, 243),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Center(
                        child: Text(
                          "Details",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff34D5E5),
                              fontFamily: 'DM_Sans',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ])),
        ]),
      ),
    );
  }
}
