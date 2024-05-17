import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class RowaDatetime extends StatelessWidget {
  const RowaDatetime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48.h,
          width: 145.w,
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Color(0xff6E97AE)),
              borderRadius: BorderRadius.circular(8.r)),
          child: Row(
            children: [
              Gap(12.w),
              Icon(
                Icons.date_range_outlined,
                color: Color(0xff6E97AE),
                size: 16.sp,
              ),
              Gap(7.w),
              Text(
                'DD-MM-YY',
                style: TextStyle(
                  color: Color(0xff6E97AE),
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  fontFamily: 'DM_Sans',
                ),
              ),
              Gap(11.w),
              Icon(Icons.keyboard_arrow_down_outlined,
                  size: 14.sp, color: Color(0xff6E97AE))
            ],
          ),
        ),
        Gap(11.w),
        Container(
          height: 48.h,
          width: 145.w,
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Color(0xff6E97AE)),
              borderRadius: BorderRadius.circular(8.r)),
          child: Row(
            children: [
              Gap(12.w),
              Icon(Icons.access_time_filled_rounded,
                  size: 16.sp, color: Color(0xff6E97AE)),
              Gap(8.w),
              Text(
                'Slot',
                style: TextStyle(
                  color: Color(0xff6E97AE),
                  fontSize: 14.sp,
                  fontFamily: 'DM_Sans',
                ),
              ),
              Gap(59.w),
              Icon(Icons.keyboard_arrow_down_outlined,
                  size: 14.sp, color: Color(0xff6E97AE))
            ],
          ),
        )
      ],
    );
  }
}
