import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back-black_button.dart';
import 'package:laundry_bin_app/extract_items/24-tracking_page/OrderstatusInfo.dart';
import 'package:laundry_bin_app/extract_items/24-tracking_page/Tracking_down_Container.dart';
import 'package:laundry_bin_app/prototype-screen/3-row-calender-page/21-order-page.dart';

class TrackingPage extends StatelessWidget {
  const TrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tracking',
            style: TextStyle(
                fontSize: 24.sp,
                color: Color(0xff141521),
                fontFamily: 'DM_Sans',
                fontWeight: FontWeight.w700)),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderPage(),
                  ));
            },
            child: Black_Backarrow()),
        backgroundColor: Color(0xffFFFFFFF),
      ),
      backgroundColor: Color(0xffECF3F6),
      body: Column(
        children: [
          Gap(16.h),
          Center(
            child: Container(
              width: 333.w,
              height: 705.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: Color(0xffFFFFFF)),
              child: Column(
                children: [
                  Gap(8.h),
                  Text('Id: 152589',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Color(0xff000000),
                          fontFamily: 'DM_Sans',
                          fontWeight: FontWeight.w500)),
                  Gap(14.h),
                  Image.asset(
                    'asset/images/032-washing_laundary.png',
                    height: 224.h,
                    width: 224.w,
                  ),
                  Gap(19.h),
                  
                  Text('20 min',
                      style: TextStyle(
                          fontSize: 24.sp,
                          color: Color(0xff000000),
                          fontFamily: 'DM_Sans',
                          fontWeight: FontWeight.w700)),
                  Gap(2.h),
                  Text('Estimated delivery time',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xffA0A5BA),
                          fontFamily: 'DM_Sans',
                          fontWeight: FontWeight.w400)),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, top: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order Status',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xff000000),
                                fontFamily: 'DM_Sans',
                                fontWeight: FontWeight.w500)),
                        Gap(20.h),
                        OrderstatusInfo(
                          color: Color(0xffFFF1EF),
                          image: 'asset/images/033-track-calendar.png',
                          text: 'Apr 03',
                          text1: 'Scheduled',
                        ),
                        Tracking_down_Container(),
                        OrderstatusInfo(
                          color: Color(0xffFFFAE8),
                          image: 'asset/images/034-truck.png',
                          text: 'Apr 04',
                          text1: 'Picked up',
                        ),
                        Tracking_down_Container(),
                        OrderstatusInfo(
                          color: Color.fromARGB(34, 44, 121, 238),
                          image: 'asset/images/035-washing_machine.png',
                          text: 'Apr 04',
                          text1: 'Washing',
                        ),
                        Tracking_down_Container(),
                        OrderstatusInfo(
                          color: Color.fromARGB(26, 31, 172, 243),
                          image: 'asset/images/036-treck_blue.png',
                          text: 'Apr 05',
                          text1: 'Out for delivery',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
