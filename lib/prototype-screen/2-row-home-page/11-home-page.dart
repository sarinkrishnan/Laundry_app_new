import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/6-home-page/6-iron_box.dart';
import 'package:laundry_bin_app/extract_items/6-home-page/6-washing_machine.dart';
import 'package:laundry_bin_app/extract_items/6-home-page/6-wash&iron.dart';
import 'package:laundry_bin_app/extract_items/6-home-page/6-shirt.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/12-washing-page.dart';
import 'package:laundry_bin_app/prototype-screen/3-row-calender-page/21-order-page.dart';
import 'package:laundry_bin_app/prototype-screen/3-row-calender-page/25-notifications-page.dart';
import 'package:laundry_bin_app/prototype-screen/4-row-profile-page/26-profile-page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pic = "asset/images/7-frame-50%of.png";

  int mycountindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(140.r),
        child: Container(
          height: 64.h,
          margin: EdgeInsets.only(bottom: 50.h, left: 24.w, right: 24.w),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(140.r)),
          clipBehavior: Clip.hardEdge,
          child: NavigationBar(
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              backgroundColor: Color(0xffFFFFFF),
              surfaceTintColor: Color(0xffFFFFFF),
              indicatorColor: Color(0xffFFFFFF),
              destinations: [
                NavigationDestination(
                    icon: Image.asset(
                      'asset/images/04-category-dark_color.png',
                      height: 28.h,
                      width: 28.w,
                    ),
                    selectedIcon: Image.asset(
                      'asset/images/03-category-blue_color.png',
                      height: 28.h,
                      width: 28.w,
                    ),
                    label: ''),
                NavigationDestination(
                    enabled: true,
                    icon: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OrderPage(),
                            ));
                      },
                      child: Image.asset(
                        'asset/images/05-calendar-dark_color.png',
                        height: 28.h,
                        width: 28.w,
                      ),
                    ),
                    selectedIcon: Image.asset(
                      'asset/images/06-calendar-blue_color.png',
                      height: 28.h,
                      width: 28.w,
                    ),
                    label: ''),
                NavigationDestination(
                    enabled: true,
                    icon: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotIficationsPage(),
                            ));
                      },
                      child: Image.asset(
                        'asset/images/08-notification_dark_color.png',
                        height: 28.h,
                        width: 28.w,
                      ),
                    ),
                    selectedIcon: Image.asset(
                      'asset/images/07-notification_blue_color.png',
                      height: 28.h,
                      width: 28.w,
                    ),
                    label: ''),
                NavigationDestination(
                    icon: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfilePage(),
                            ));
                      },
                      child: Image.asset(
                        'asset/images/010-user-dark_color.png',
                        height: 28.h,
                        width: 28.w,
                      ),
                    ),
                    selectedIcon: Image.asset(
                      'asset/images/09-user_blue_color.png',
                      height: 28.h,
                      width: 28.w,
                    ),
                    label: ''),
              ]),
        ),
      ),
      backgroundColor: Color(0xffECF3F6),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 50.h, left: 28.w),
                      child: Text(
                        'Hello\nJohn Doe',
                        style: TextStyle(
                            fontFamily: 'DM_Sans',
                            fontSize: 34.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff141521)),
                      ),
                    ),
                  ],
                ),
                Positioned(
                    top: 0.h,
                    right: 0.w,
                    child: Opacity(
                      opacity: .30,
                      child: Image.asset(
                        'asset/images/5-frame-top.png',
                        height: 138.h,
                        width: 249.w,
                      ),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 27.w, top: 3.h),
              child: Row(
                children: [
                  Image.asset(
                    'asset/images/6-frame-house.png',
                    height: 15.h,
                    width: 15.w,
                  ),
                  Gap(9.w),
                  Text(
                    'Westhills, Calicut',
                    style: TextStyle(
                        color: Color(0xff6E97AE),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'DM_Sans'),
                  ),
                  Gap(6.w),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Color(0xff1FACF3),
                  ),
                ],
              ),
            ),
            Center(
              child: CarouselSlider(
                  items: [
                    for (int i = 0; i < 3; i++)
                      Image.asset(
                        pic,
                        //height: 100.h,
                        width: 328.w,
                      ),
                  ],
                  options: CarouselOptions(
                    viewportFraction: 1,
                    initialPage: 0,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        mycountindex = index;
                      });
                    },
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  mycountindex == i
                      ? SizedBox(width: 20.w,
                        child: Container(
                            height: 8.h,
                           // width: 0.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue,)),
                      )
                      :  SizedBox(width: 20,
                        child: Container(
                            height: 7.h,
                           // width: 7.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2.w,color: Color(0xff6E97AE)),
                            )),
                      )
              ],
            ),
            Gap(15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Container(
                width: 327.w,
                height: 150.h,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(8.r)),
                child: Padding(
                  padding: EdgeInsets.only(left: 17.w, top: 14.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'asset/images/011-fi.png',
                            height: 19.h,
                            width: 19.w,
                          ),
                          Gap(5.w),
                          Text(
                            'Offers',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp,
                                fontFamily: 'DM_Sans',
                                color: Color(0xff1FACF3)),
                          )
                        ],
                      ),
                      Gap(8.h),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 91.h,
                              width: 242.w,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(23, 110, 150, 174),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 11.w, top: 10.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Free delivery on every orders for\n6 months',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp,
                                          fontFamily: 'DM_Sans',
                                          color: Color(0xff141521)),
                                    ),
                                    Text(
                                      '\$499',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22.sp,
                                          fontFamily: 'DM_Sans',
                                          color: Color(0xff6E97AE)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Gap(15.w),
                            Container(
                              height: 91.h,
                              width: 242.w,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(23, 110, 150, 174),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 11.w, top: 10.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Free delivery on every orders for\n6 months',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp,
                                          fontFamily: 'DM_Sans',
                                          color: Color(0xff141521)),
                                    ),
                                    Text(
                                      '\$299',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22.sp,
                                          fontFamily: 'DM_Sans',
                                          color: Color(0xff6E97AE)),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.w, top: 17.h),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WashIng(),
                            ));
                      },
                      child: WasingMachine()),
                  Gap(21.w),
                  IronBox(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.w, top: 15.24.h),
              child: Row(
                children: [WashIron(), Gap(21.w), DryShirt()],
              ),
            ),
            Gap(145.h)
          ],
        ),
      ),
    );
  }
}
