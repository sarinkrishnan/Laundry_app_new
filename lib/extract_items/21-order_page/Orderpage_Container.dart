import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Orderpage_Container extends StatelessWidget {
  const Orderpage_Container(
      {super.key,
      required this.image,
      required this.text,
      required this.text1,
      required this.colors,
      required this.containertext,
      required this.text2,
      required this.onTap1,
      required this.onTap2});
  final void Function() onTap1;
  final void Function() onTap2;
  final String image;
  final String text;
  final String text1;
  final String containertext;
  final String text2;

  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 333.w,
      height: 189.h,
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.w, right: 10.w, top: 17.h),
            child: Row(
              children: [
                Container(
                  height: 123.h,
                  width: 88.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21.r),
                      color: Color.fromARGB(142, 204, 230, 241)),
                  child: Center(
                      child: Image.asset(
                    image,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                text,
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
                                  color: colors,
                                  borderRadius: BorderRadius.circular(51.r),
                                ),
                                child: Center(
                                    child: Text(
                                  text1,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Color(0xffFFFFFF),
                                      fontFamily: 'DM_Sans',
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                            ],
                          ),
                          Gap(6.h),
                          SizedBox(
                              width: 210.w,
                              child: DottedLine(
                                dashColor: Color(0xffE6E6E6),
                                lineThickness: 2,
                              )),
                          Gap(10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Gap(3.h),
          Row(
            children: [
              Gap(19.w),
              Padding(
                padding: EdgeInsets.only(top: 7.h),
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
                    Text(
                      text2,
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Color(0xff30D472),
                          fontFamily: 'DM_Sans',
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Gap(11.w),
              InfobuttonOne(
                containertext1: containertext,
                onpress: onTap2,
              ),
              Gap(8.w),
              InfoButton(
                containertext: containertext,
                onTap: onTap1,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class InfobuttonOne extends StatelessWidget {
  final String containertext1;
  final void Function() onpress;
  InfobuttonOne({
    super.key,
    required this.containertext1,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 29.h,
        width: 102.w,
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
    );
  }
}

class InfoButton extends StatelessWidget {
  final String containertext;

  final void Function() onTap;
  const InfoButton({
    super.key,
    required this.containertext,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 29.h,
        width: 102.w,
        decoration: BoxDecoration(
          color: Color.fromARGB(40, 19, 221, 243),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Center(
          child: Text(
            // "Add Rating",
            containertext,
            style: TextStyle(
                fontSize: 14.sp,
                color: Color(0xff34D5E5),
                fontFamily: 'DM_Sans',
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
