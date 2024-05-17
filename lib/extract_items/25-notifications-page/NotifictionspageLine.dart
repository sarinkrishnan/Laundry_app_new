
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class NotifictionspageLine extends StatelessWidget {
  const NotifictionspageLine({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 54.h,
          width: 54.w,
          child: Center(
              child: Image.asset(
            'asset/images/040-notification.png',
            height: 28.h,
            width: 28.w,
          )),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xffFFFFFF)),
        ),
        Gap(25.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 253.w,
              child: Text(
                text,
                style: TextStyle(
                    fontFamily: 'DM_Sans',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff141521)),
              ),
            ),
            Gap(8.h),
            Text(
              '25th Sep 2021 at 3:32 am',
              style: TextStyle(
                  fontFamily: 'DM_Sans',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6E97AE)),
            )
          ],
        )
      ],
    );
  }
}
