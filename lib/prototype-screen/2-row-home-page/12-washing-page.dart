import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/7-washing-page/7-listview.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/11-home-page.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/13-instruction-page.dart';

class WashIng extends StatefulWidget {
  const WashIng({super.key});

  @override
  State<WashIng> createState() => _WashIngState();
}

class _WashIngState extends State<WashIng> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Washing"),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          },
          child: Icon(
            Icons.keyboard_backspace,
            size: 30.h,
          ),
        ),
        backgroundColor: Color(0xff8FF2FF),
      ),
      backgroundColor: Color(0xff8FF2FF),
      body: Stack(
        children: [
          Image.asset(
            'asset/images/16-frame-topimage.png',
            height: 199.h,
            width: MediaQuery.of(context).size.width.w,
          ),
          Column(
            children: [
              Gap(162.h),
              Container(
                  height: 569.h,
                  width: MediaQuery.of(context).size.width.w,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18.r),
                          topRight: Radius.circular(18.r))),
                  child: ListView(
                    children: [
                      Gap(28.h),
                      ListviewBuilder(
                        image: 'asset/images/17-shirt.png',
                        text: 'Shirt',
                        price: '\$20',
                      ),
                      Gap(17.h),
                      ListviewBuilder(
                        image: 'asset/images/18-t-Shirt.png',
                        text: 'T-Shirt',
                        price: '\$20',
                      ),
                      Gap(17.h),
                      ListviewBuilder(
                        image: 'asset/images/19-shorts.png',
                        text: 'Shorts',
                        price: '\$10',
                      ),
                      Gap(17.h),
                      ListviewBuilder(
                        image: 'asset/images/20-Skirt.png',
                        text: 'Skirt',
                        price: '\$20',
                      ),
                      Gap(17.h),
                      ListviewBuilder(
                        image: 'asset/images/21-Jacket.png',
                        text: 'Jacket',
                        price: '\$40',
                      ),
                      Gap(17.h),
                      ListviewBuilder(
                        image: 'asset/images/22-jeans.png',
                        text: 'Jeans',
                        price: '\$40',
                      ),
                      Gap(17.h),
                      ListviewBuilder(
                        image: 'asset/images/23-hoodie.png',
                        text: 'Hoodie',
                        price: '\$40',
                      ),
                      Gap(18.h),
                      Center(
                        child: SizedBox(
                            height: 64.h,
                            width: 333.w,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => InstrecTions(),
                                      ));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff1FACF3)),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '\$110',
                                          style: TextStyle(
                                              fontFamily: 'DM_Sans',
                                              color: Color(0xffFFFFFF),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20.sp),
                                        ),
                                        Text(
                                          '8 Items',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontFamily: 'DM_Sans',
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xffFFFFFF)),
                                        ),
                                      ],
                                    ),
                                    Gap(120.w),
                                    Text(
                                      'Proceed',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.sp,
                                          fontFamily: 'DM_Sans',
                                          color: Color(0xffFFFFFF)),
                                    ),
                                    Gap(14.w),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 30.sp,
                                      color: Color(0xffFFFFFF),
                                    )
                                  ],
                                ))),
                      )
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
