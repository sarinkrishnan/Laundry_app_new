
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class RowOne extends StatefulWidget {
  const RowOne({
    super.key,
  });

  @override
  State<RowOne> createState() => _RowOneState();
}

class _RowOneState extends State<RowOne> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        value
            ? GestureDetector(
                onTap: () {
                  value = value;
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
                            'asset/images/24-white-sun.png',
                            height: 26.h,
                            width: 26.w,
                          ),
                        ),
                      ),
                      Gap(29.w),
                      Text(
                        'Hot',
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
                  value = !value;
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
                            'asset/images/25-dark-sun.png',
                            height: 26.h,
                            width: 26.w,
                          ),
                        ),
                      ),
                      Gap(29.w),
                      Text(
                        "Hot",
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
        Gap(12.w),
        !value
            ? GestureDetector(
                onTap: () {
                  value = value;
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
                            'asset/images/27-white-cold.png',
                            height: 26.h,
                            width: 26.w,
                          ),
                        ),
                      ),
                      Gap(29.w),
                      Text(
                        'Cold',
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
                  value = !value;
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
                            'asset/images/26-dark-cold.png',
                            height: 26.h,
                            width: 26.w,
                          ),
                        ),
                      ),
                      Gap(29.w),
                      Text(
                        "Cold",
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
