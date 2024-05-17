
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class RowTwo extends StatefulWidget {
  const RowTwo({super.key});

  @override
  State<RowTwo> createState() => _RowTwoState();
}

class _RowTwoState extends State<RowTwo> {
  bool valueone = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        valueone
            ? GestureDetector(
                onTap: () {
                  valueone = valueone;
                  setState(() {});
                },
                child: Container(
                  height: 53.h,
                  width: 158.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(44.r),
                      border:
                          Border.all(color: Color(0xff1FACF3), width: 2.0.sp),
                      color: Color(0xffFFFFFF)),
                  child: Row(
                    children: [
                      Gap(3.w),
                      Container(
                        height: 46.h,
                        width: 46.w,
                        decoration: BoxDecoration(
                            color: Color(
                              0xff1FACF3,
                            ),
                            shape: BoxShape.circle),
                        child: Center(
                          child: Image.asset(
                            'asset/images/28-tick-circle.png',
                            height: 26.h,
                            width: 26.w,
                          ),
                        ),
                      ),
                      Gap(29.w),
                      Text(
                        'Yes',
                        style: TextStyle(
                          color: Color(0xff141521),
                          fontFamily: 'DM_Sans',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              )
            : GestureDetector(
                onTap: () {
                  valueone = !valueone;
                  setState(() {});
                },
                child: Container(
                  height: 53.h,
                  width: 158.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(44.r),
                      color: Color(0xffFFFFFF)),
                  child: Row(
                    children: [
                      Gap(3.w),
                      Container(
                        height: 46.h,
                        width: 46.w,
                        decoration: BoxDecoration(
                            color: Color(
                              0xffECF3F6,
                            ),
                            shape: BoxShape.circle),
                        child: Center(
                          child: Image.asset(
                            'asset/images/29-tick-dark-circle.png',
                            height: 26.h,
                            width: 26.w,
                          ),
                        ),
                      ),
                      Gap(29.w),
                      Text(
                        "Yes",
                        style: TextStyle(
                          color: Color(0xff141521),
                          fontFamily: 'DM_Sans',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ),
        Gap(12),
        !valueone
            ? GestureDetector(
                onTap: () {
                  valueone = valueone;
                  setState(() {});
                },
                child: Container(
                  height: 53.h,
                  width: 158.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(44.r),
                      border:
                          Border.all(color: Color(0xff1FACF3), width: 2.0.sp),
                      color: Color(0xffFFFFFF)),
                  child: Row(
                    children: [
                      Gap(3.w),
                      Container(
                        height: 46.h,
                        width: 46.w,
                        decoration: BoxDecoration(
                            color: Color(
                              0xff1FACF3,
                            ),
                            shape: BoxShape.circle),
                        child: Center(
                          child: Image.asset(
                            'asset/images/32-white-close-circle.png',
                            height: 26.h,
                            width: 26.w,
                          ),
                        ),
                      ),
                      Gap(29.w),
                      Text(
                        'No',
                        style: TextStyle(
                          color: Color(0xff141521),
                          fontFamily: 'DM_Sans',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              )
            : GestureDetector(
                onTap: () {
                  valueone = !valueone;
                  setState(() {});
                },
                child: Container(
                  height: 53.h,
                  width: 158.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(44.r),
                      color: Color(0xffFFFFFF)),
                  child: Row(
                    children: [
                      Gap(3.w),
                      Container(
                        height: 46.h,
                        width: 46.w,
                        decoration: BoxDecoration(
                            color: Color(
                              0xffECF3F6,
                            ),
                            shape: BoxShape.circle),
                        child: Center(
                          child: Image.asset(
                            'asset/images/35-dark-close-circle.png',
                            height: 26.h,
                            width: 26.w,
                          ),
                        ),
                      ),
                      Gap(29.w),
                      Text(
                        "No",
                        style: TextStyle(
                          color: Color(0xff141521),
                          fontFamily: 'DM_Sans',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ),
      ],
    );
  }
}
