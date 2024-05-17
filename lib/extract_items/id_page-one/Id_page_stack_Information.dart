
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Id_page_stack_Information extends StatelessWidget {
  const Id_page_stack_Information({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'asset/images/029-Subtract_id_page.png',
          height: 283.h,
          width: 333.w,
        ),
        Padding(
          padding: EdgeInsets.only(left: 19.w, top: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Receipt',
                style: TextStyle(
                    color: Color(0xff1FACF3),
                    fontFamily: 'DM_Sans',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700),
              ),
              Gap(8.h),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shirt",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    ),
                    Text(
                      '    x2',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    ),
                    Text(
                      '\$40',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    )
                  ],
                ),
              ),
              Gap(8.h),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "T-Shirt",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    ),
                    Text(
                      'x2',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    ),
                    Text(
                      '\$40',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    )
                  ],
                ),
              ),
              Gap(8.h),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shorts",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    ),
                    Text(
                      'x1',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    ),
                    Text(
                      '\$40',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    )
                  ],
                ),
              ),
              Gap(8.h),
              SizedBox(
                  width: 318.w,
                  child: Divider(
                    color: Color.fromARGB(255, 254, 238, 238),
                  )),
              Gap(12.h),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery Charge ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    ),
                    Text(
                      '\$50',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    )
                  ],
                ),
              ),Gap(8.h),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tax",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    ),
                    Text(
                      '\$50',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    )
                  ],
                ),
              ),
              Gap(6.h),
              SizedBox(
                  width: 318.w,
                  child: Divider(
                    color: Color.fromARGB(255, 254, 238, 238),
                  )),Gap(12.h),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff200F33)),
                    ),
                    Text(
                      '\$110',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff200F33)),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
