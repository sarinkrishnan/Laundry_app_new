import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/map-2-page/Map_edit_on_Map.dart';
import 'package:laundry_bin_app/extract_items/map-2-page/Mapbottum_three_Containers.dart';
import 'package:laundry_bin_app/extract_items/map-2-page/map_bottum_sheetl_ines.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/14-summary-page.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/18-map1-location-page.dart';

class MaplocationTwo extends StatelessWidget {
  const MaplocationTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'asset/images/023-map-page-2.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width.w,
            height: MediaQuery.of(context).size.height.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.h,
            ),
            child: Map_whiteContainer(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 49.h, left: 240.w),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MaplocationPage(),
                      ));
                },
                child: Map_edit_on_Map()),
          ),
          Padding(
            padding: EdgeInsets.only(top: 175.h, left: 20.w),
            child: SizedBox(
              height: 110.h,
              width: 342.w,
              child: Image.asset(
                'asset/images/020-Union-card.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 182.h, left: 75.w),
            child: Text(
              '319  Cross,  between  Hufuf  and,  Al\n  Khob...',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'DM_Sans',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff141521)),
            ),
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                      height: 400.h,
                      width: MediaQuery.of(context).size.width.w,
                      color: Color(0xffFFFFFF),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 21.h,right: 16.w),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_sharp,
                                  size: 28.sp,
                                  color: Color(0xff1FACF3),
                                ),
                                Gap(14.w),
                                Text(
                                  ' Dammam',
                                  style: TextStyle(
                                    fontSize: 24.sp,
                                    fontFamily: 'DM_Sans',
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff2F3133),
                                  ),
                                )
                              ],
                            ),
                            Gap(24.h),
                            Map_bottum_sheetLines(
                              image: 'asset/images/024-buildings.png',
                              text: 'Apartment/ building/ flat name',
                            ),
                            Gap(17.h),
                            Map_bottum_sheetLines(
                                image: 'asset/images/025-buliding-1.png',
                                text: 'Floor number'),
                            Gap(17.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'asset/images/026-map-call.png',
                                  height: 20.h,
                                  width: 20.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Floor number',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontFamily: 'DM_Sans',
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffB7CBD7),
                                        )),
                                    Gap(4.h),
                                    Text('8415698625',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontFamily: 'DM_Sans',
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff200F33),
                                        )),
                                    Gap(4.h),
                                    SizedBox(
                                      width: 309.w,
                                      child: Divider(
                                        height: 15.h,
                                        color: Color.fromARGB(255, 7, 143, 227),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Gap(15.h),
                            Row(
                              children: [
                                Text('Save For',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'DM_Sans',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff200F33),
                                    )),Gap(16.w),
                                Mapbottum_three_Containers(),
                              ],
                            ),
                            Gap(22.h),
                            SizedBox(
                              height: 63.h,
                              width: 333.w,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SummaryPage(),
                                      ));
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff1FACF3),
                                ),
                                child: Center(
                                  child: Text(
                                    'Save',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0xffFFFFFF),
                                        fontFamily: 'DM_Sans',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ));
                },
              );
            },
            child: Padding(
              padding: EdgeInsets.only(top: 250.h, left: 177.w),
              child: Image.asset(
                'asset/images/019-location.png',
                width: 31.w,
                height: 53.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
