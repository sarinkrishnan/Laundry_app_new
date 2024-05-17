import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Map_bottum_sheetLines extends StatelessWidget {
  const Map_bottum_sheetLines({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: Image.asset(
            image,
            height: 20.h,
            width: 20.w,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'DM_Sans',
                  fontWeight: FontWeight.w400,
                  color: Color(0xffB7CBD7),
                )),
            Gap(8.h),
            SizedBox(
              width: 309.w,
              child: Divider(
                height: 12.h,
                color: Color(0xffB7CBD7),
              ),
            )
          ],
        )
      ],
    );
  }
}
