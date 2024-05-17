import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class RowThree extends StatefulWidget {
  const RowThree({super.key});

  @override
  State<RowThree> createState() => _RowThreeState();
}

class _RowThreeState extends State<RowThree> {
  bool valuethree = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        valuethree
            ? GestureDetector(
                onTap: () {
                  valuethree = valuethree;
                  setState(() {});
                },
                child: Container(
                  height: 53.h,
                  width: 158.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(44.r),
                      border:
                          Border.all(color: Color(0xff1FACF3), width: 2.0.w),
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
                            'asset/images/30-white-scented-.png',
                            height: 26.h,
                            width: 26.w,
                          ),
                        ),
                      ),
                      Gap(29.w),
                      Text(
                        'Scented',
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
                  valuethree = !valuethree;
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
                            'asset/images/31-dark-scented.png',
                            height: 26.h,
                            width: 26.w,
                          ),
                        ),
                      ),
                      Gap(29.w),
                      Text(
                        "Scented",
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
        !valuethree
            ? GestureDetector(
                onTap: () {
                  valuethree = valuethree;
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
                            'asset/images/33-white-wind.png',
                            height: 26.h,
                            width: 26.w,
                          ),
                        ),
                      ),
                      Gap(29.w),
                      Text(
                        'Normel',
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
                  valuethree = !valuethree;
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
                            color: Color(0xffECF3F6),
                            shape: BoxShape.circle),
                        child: Center(
                          child: Image.asset(
                            'asset/images/34-dark-wind.png',
                            height: 26.h,
                            width: 26.w,
                          ),
                        ),
                      ),
                      Gap(29.w),
                      Text(
                        "Normel",
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
