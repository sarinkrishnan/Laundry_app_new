import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/prototype-screen/3-row-calender-page/21-order-page.dart';
import 'package:laundry_bin_app/prototype-screen/3-row-calender-page/23-id_152589-page.dart';

Future<dynamic> ratingSheet(BuildContext context) {
  return showModalBottomSheet(
    scrollControlDisabledMaxHeightRatio: .60.h,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 4.h,
        width: MediaQuery.of(context).size.width.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r), topRight: Radius.circular(12.r)),
          color: Color(0xffFFFFFF),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(9.h),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPage(),));
                      },
                      child: Icon(
                        Icons.close,
                        size: 32.sp,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'How satisfied were you\nwith your experience',
                style: TextStyle(
                    fontSize: 24.sp,
                    color: Color(0xff141521),
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.w700),
              ),
              Gap(26.h),
              Container(
                width: 333.w,
                height: 71.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Color(0xffECF3F6)),
                child: Center(
                  child: RatingBar.builder(
                    initialRating: 0,
                    minRating: 0,
                    unratedColor: Color(0xffFFFFFF),
                    itemCount: 5,
                    itemSize: 42.sp,
                    itemPadding: EdgeInsets.symmetric(horizontal: 6.w),
                    updateOnDrag: true,
                    itemBuilder: (context, index) => Image.asset(
                      'asset/images/037-blue-Star.png',
                      height: 42.h,
                      width: 42.w,
                    ),
                    onRatingUpdate: (ratingvalue) {
                      isSelected = !isSelected;
                    },
                  ),
                ),
              ),
              Gap(20.h),
              SizedBox(
                height: 170.h,
                width: 333.w,
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  maxLines: 8,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffECF3F6),
                      hintText: 'Enter notes here',
                      contentPadding: EdgeInsets.only(top: 18.h, left: 21.w),
                      hintStyle: TextStyle(
                          color: Color(0xff6E97AE),
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12.r))),
                ),
              ),
              Gap(30.h),
              SizedBox(
                width: 333.w,
                height: 64.h,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff1FACF3),
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Color(0xffFFFFFF),
                          fontFamily: 'DM_Sans',
                          fontWeight: FontWeight.w700),
                    )),
              )
            ],
          ),
        ),
      );
    },
  );
}
