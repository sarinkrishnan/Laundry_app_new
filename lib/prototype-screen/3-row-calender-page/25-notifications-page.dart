import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/25-notifications-page/NotifictionspageLine.dart';
import 'package:laundry_bin_app/prototype-screen/3-row-calender-page/21-order-page.dart';

class NotIficationsPage extends StatelessWidget {
  const NotIficationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      body: Padding(
        padding: EdgeInsets.only(
          left: 24.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(62.h),
            Text(
              'Notifications',
              style: TextStyle(
                  fontFamily: 'DM_Sans',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff141521)),
            ),
            Gap(27.h),
            GestureDetector(onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => OrderPage(),));
            },
              child: NotifictionspageLine(
                text:
                    'Your laundry booking on 12 DEC 2024 at 02:00 PM has been successful !',
              ),
            ),
            Gap(16.h),
            SizedBox(width: 333.w, child: Divider()),
            Gap(16.h),
            NotifictionspageLine(
              text:
                  'Cancelled: “Appointment for 12 DEC 2024 at 02:00 PM. Thank you."',
            ),
            Gap(16.h),
            SizedBox(width: 333.w, child: Divider()),
            Gap(16.h),
            NotifictionspageLine(
              text: "Tomorrow: Don't forget laundry appointment at 02:00 PM",
            ),
          ],
        ),
      ),
    );
  }
}
