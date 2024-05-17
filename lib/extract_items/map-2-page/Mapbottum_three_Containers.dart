import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Mapbottum_three_Containers extends StatefulWidget {
  const Mapbottum_three_Containers({
    super.key,
  });

  @override
  State<Mapbottum_three_Containers> createState() =>
      _Mapbottum_three_ContainersState();
}

int selected = 1;

class _Mapbottum_three_ContainersState
    extends State<Mapbottum_three_Containers> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            selected = 1;
            setState(() {});
          },
          child: Container(
            height: 32.h,
            width: 63.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color:selected==1? Color(0xff1FACF3):Color(0xffFFFFFF)),
            child: Center(
              child: Text('Home',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff200F33),
                  )),
            ),
          ),
        ),
        Gap(16.w),
        GestureDetector(onTap: () {
          selected=2;
          setState(() {
            
          });
        },
          child: Container(
            height: 32.h,
            width: 63.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color:selected==2? Color(0xff1FACF3):Color(0xffFFFFFF)),
            child: Center(
              child: Text('Office',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff200F33),
                  )),
            ),
          ),
        ),
        Gap(16.w),
        GestureDetector(onTap: () {
          selected=3;
          setState(() {
            
          });
        },
          child: Container(
            height: 32.h,
            width: 63.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color:selected==3? Color(0xff1FACF3):Color(0xffFFFFFF)),
            child: Center(
              child: Text('Other',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff200F33),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
