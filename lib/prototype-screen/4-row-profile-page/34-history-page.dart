import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/21-order_page/ratingSheet.dart';
import 'package:laundry_bin_app/extract_items/34-history-page/HistorylistContainers.dart';
import 'package:laundry_bin_app/prototype-screen/3-row-calender-page/23-id_152589-page.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 25.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.keyboard_backspace_sharp,
                      size: 35.sp,
                    ),
                  ),
                  Gap(98.w),
                  Text(
                    'History',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        fontFamily: 'DM_Sans',
                        color: Color(0xff141521)),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 218.w, top: 4.h),
                child: Container(
                  height: 37.h,
                  width: 123.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.r),
                    color: Color(0xffFFFFFF),
                  ),
                  child: Row(
                    children: [
                      Gap(9.w),
                      Text(
                        'All Orders',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff6E97AE),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 30.sp,
                        color: Color(0xff6E97AE),
                      )
                    ],
                  ),
                ),
              ),
              Gap(10.h),
              HistorylistContainers(details: () =>  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IdpageTwo(),
                      )),  add_rating: () {
                    ratingSheet(context);
                      },
                height: 60,
                width: 47,
                image: 'asset/images/022-washing-machine.png',
                color: Color(0xff30D472),
              ),
              Gap(15),
              HistorylistContainers(
                details: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IdpageTwo(),
                      ));
                },
                  add_rating: () {
                    ratingSheet(context);
                      },
                height: 58,
                width: 32,
                image: 'asset/images/030-iron_box.png',
                color: Color(0xff30D472),
              ),
              Gap(15),
              HistorylistContainers(
                details: () { Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IdpageTwo(),
                      ));},
                      add_rating: () {
                    ratingSheet(context);
                      },
                height: 58,
                width: 32,
                image: 'asset/images/030-iron_box.png',
                color: Color(0xff30D472),
              ),
              Gap(15.h),
              Container(
                height: 189.h,
                width: 333.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      12.r,
                    ),
                    color: Color(0xffFFFFFF)),
                child: Padding(
                  padding: EdgeInsets.only(left: 12.w, top: 17.h, right: 10.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 123.h,
                            width: 88.w,
                            decoration: BoxDecoration(
                                color: Color(0xffECF3F6),
                                borderRadius: BorderRadius.circular(21.r)),
                            child: Center(
                              child: Image.asset(
                                'asset/images/022-washing-machine.png',
                                height: 60.h,
                                width: 47.w,
                              ),
                            ),
                          ),
                          Gap(11.w),
                          Container(
                            width: 210.w,
                            height: 130,
                            decoration: BoxDecoration(color: Color(0xffFFFFFF)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 4.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Washing',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.sp,
                                          fontFamily: 'DM_Sans',
                                          color: Color(0xff141521),
                                        ),
                                      ),
                                      Container(
                                        height: 23.h,
                                        width: 80.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xffD14646),
                                            borderRadius:
                                                BorderRadius.circular(51.r)),
                                        child: Center(
                                          child: Text(
                                            'Cancelled',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12.sp,
                                              fontFamily: 'DM_Sans',
                                              color: Color(0xffFFFFFF),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Gap(8.h),
                                SizedBox(
                                    width: 235.w,
                                    child: DottedLine(
                                      dashColor: Color.fromARGB(25, 0, 0, 0),
                                      lineThickness: 2,
                                    )),
                                Gap(10.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Shirt',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          fontFamily: 'DM_Sans',
                                          color: Color(0xff141521),
                                        )),
                                    Text('x2',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          fontFamily: 'DM_Sans',
                                          color: Color(0xff141521),
                                        ))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('T-Shirt',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          fontFamily: 'DM_Sans',
                                          color: Color(0xff141521),
                                        )),
                                    Text('x2',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          fontFamily: 'DM_Sans',
                                          color: Color(0xff141521),
                                        ))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Shorts',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          fontFamily: 'DM_Sans',
                                          color: Color(0xff141521),
                                        )),
                                    Text('x1',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          fontFamily: 'DM_Sans',
                                          color: Color(0xff141521),
                                        ))
                                  ],
                                ),
                                Text('+2 Items',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      fontFamily: 'DM_Sans',
                                      color: Color(0xff6E97AE),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                      Gap(2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('20 Dec 2024',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    fontFamily: 'DM_Sans',
                                    color: Color(0xff121212),
                                  )),
                            ],
                          ),
                          Container(
                            height: 29.h,
                            width: 212.w,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(23, 0, 233, 254),
                                borderRadius: BorderRadius.circular(20.r)),
                            child: Center(
                              child: Text('Details',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    fontFamily: 'DM_Sans',
                                    color: Color(0xff34D5E5),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(30.h),
            ],
          ),
        ),
      ),
    );
  }
}
