

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HistorylistContainers extends StatelessWidget {
  const HistorylistContainers(
      {super.key,
      required this.color,
      required this.image,
      required this.height,
      required this.width, required this.add_rating, required this.details, });
  final Color color;
  final String image;
  final int height;
  final int width;
   final void Function () add_rating;
    final void Function () details;
   
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 189.h,
      width: 333.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12.r,
          ),
          color: Color(0xffFFFFFF)),
      child: Padding(
        padding: EdgeInsets.only(left: 12.w, top: 17.h, right: 10.w),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 123.h,
                  width: 88.w,
                  decoration: BoxDecoration(
                      color: Color(0xffECF3F6),
                      borderRadius: BorderRadius.circular(21.r)),
                  child: Center(
                    child: Image.asset(
                      image,
                      height: height.h,
                      width: width.w,
                    ),
                  ),
                ),
                Gap(11.w),
                Container(
                  width: 210.w,
                  height: 130,
                  decoration: BoxDecoration(color: Color(0xffFFFFFF)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ironing',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp,
                                fontFamily: 'DM_Sans',
                                color: Color(0xff141521),
                              ),
                            ),
                            Container(
                              height: 23.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(51.r)),
                              child: Center(
                                child: Text(
                                  'Completed',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    fontFamily: 'DM_Sans',
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Gap(8.h),
                      SizedBox(
                          width: 235.w,
                          child: DottedLine(
                            dashColor: Color.fromARGB(25, 0, 0, 0),
                            lineThickness: 2,
                          )),
                      Gap(10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shirt',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                fontFamily: 'DM_Sans',
                                color: Color(0xff141521),
                              )),
                          Text('x2',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                fontFamily: 'DM_Sans',
                                color: Color(0xff141521),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('T-Shirt',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                fontFamily: 'DM_Sans',
                                color: Color(0xff141521),
                              )),
                          Text('x2',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                fontFamily: 'DM_Sans',
                                color: Color(0xff141521),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shorts',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                fontFamily: 'DM_Sans',
                                color: Color(0xff141521),
                              )),
                          Text('x1',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                fontFamily: 'DM_Sans',
                                color: Color(0xff141521),
                              ))
                        ],
                      ),
                      Text('+2 Items',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            fontFamily: 'DM_Sans',
                            color: Color(0xff6E97AE),
                          )),
                    ],
                  ),
                )
              ],
            ),
            Gap(5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Gap(0.1.w),
                Column(
                  children: [
                    Text('20 Dec 2024',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff121212),
                        )),
                    Text('₹499',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff30D472),
                        )),
                  ],
                ),
                GestureDetector(onTap: 
                  details,
                
                  child: Container(
                    height: 29.h,
                    width: 102.w,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(23, 0, 233, 254),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Center(
                      child: Text('Details',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            fontFamily: 'DM_Sans',
                            color: Color(0xff34D5E5),
                          )),
                    ),
                  ),
                ),
                GestureDetector(onTap: 
                  add_rating,
                
                  child: Container(
                    height: 29.h,
                    width: 102.w,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(23, 0, 233, 254),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Center(
                      child: Text('Add Rating',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            fontFamily: 'DM_Sans',
                            color: Color(0xff34D5E5),
                          )),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
