

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Map_edit_on_Map extends StatelessWidget {
  const Map_edit_on_Map({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      width: 131.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.r),
          color: Color(0xffFFFFFF)),
      child: Row(
        children: [
          Gap(10.w),
          Icon(
            Icons.location_on_sharp,size: 22.sp,
            color: Color(0xff1FACF3),
          ),
          Text(
            ' Edit on Map',
            style: TextStyle(
              fontSize: 14.sp,
              fontFamily: 'DM_Sans',
              fontWeight: FontWeight.w500,
              color: Color(0xff1FACF3),
            ),
          )
        ],
      ),
    );
  }
}

