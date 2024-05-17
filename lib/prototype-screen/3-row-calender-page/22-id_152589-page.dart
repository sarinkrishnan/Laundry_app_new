import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/id_page-one/Id_page_stack_Information.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back-black_button.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/11-home-page.dart';
import 'package:laundry_bin_app/prototype-screen/3-row-calender-page/21-order-page.dart';
import 'package:radio_group_v2/radio_group_v2.dart';

import '../../extract_items/id_page-one/PickupContainer_idPage.dart';

class IdPage extends StatefulWidget {
  const IdPage({super.key});

  @override
  State<IdPage> createState() => _IdPageState();
}

class _IdPageState extends State<IdPage> {
  int mycount = 1;
  RadioGroupController radio_controler = RadioGroupController();
  int selected = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffECF3F6),
        title: Text(
          'Id: 152589',
          style: TextStyle(
              color: Color(0xff141521),
              fontFamily: 'DM_Sans',
              fontSize: 20.sp,
              fontWeight: FontWeight.w700),
        ),
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
      ),
      backgroundColor: Color(0xffECF3F6),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 84.h,
              width: 333.w,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(12.r)),
              child: Padding(
                padding: EdgeInsets.only(top: 9.h, left: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Status',
                      style: TextStyle(
                          color: Color(0xff1FACF3),
                          fontFamily: 'DM_Sans',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Gap(8.h),
                    Container(
                      height: 29.h,
                      width: 301.w,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(44, 52, 214, 229),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Row(
                        children: [
                          Gap(9.w),
                          Icon(
                            Icons.notifications,
                            size: 20.sp,
                            color: Color(0xff34D5E5),
                          ),
                          Gap(4.w),
                          Text(
                            'Booking Accepted',
                            style: TextStyle(
                                color: Color(0xff34D5E5),
                                fontFamily: 'DM_Sans',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(12.h),
            PickupContainer_idPage(text: 'Pickup', text1: '25-05-23'),
            Gap(12.h),
            PickupContainer_idPage(
              text: 'Delivery (Express)',
              text1: '26-05-23',
            ),
            Gap(8.h),
            Id_page_stack_Information(),
            Gap(7.h),
            Center(
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    scrollControlDisabledMaxHeightRatio: .8,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 279.h,
                        width: 381.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                12.r,
                              ),
                              topRight: Radius.circular(12.r)),
                          color: Color(0xffFFFFFF),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 24.w, right: 24.r, top: 17.h),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.close,
                                      size: 43.sp,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                'Are You Sure',
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontFamily: 'DM_Sans',
                                    fontSize: 34.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              Gap(12.h),
                              Text(
                                textAlign: TextAlign.center,
                                'Do You want to cancel\nThis Booking',
                                style: TextStyle(
                                    color: Color(0xff99AABA),
                                    fontFamily: 'DM_Sans',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              Gap(19.h),
                              Row(
                                children: [
                                  ShowbottumsheetInfo(
                                    onpress: () {
                                      Navigator.pop(context);
                                    },
                                    color: Color(0xff1FACF3),
                                    text: 'No',
                                  ),
                                  Gap(13.w),
                                  ShowbottumsheetInfo(
                                    onpress: () {
                                      Navigator.pop(context);
                                      showModalBottomSheet(
                                        scrollControlDisabledMaxHeightRatio:
                                            .83.h,
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                              color: Color(0xffFFFFFF),
                                            ),
                                            width: double.infinity.w,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 13.h, left: 24.w),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          'Tell us\nyour reason for\ncancelling',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 30.sp,
                                                              fontFamily:
                                                                  'DM_Sans',
                                                              color: Color(
                                                                  0xff000000)),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 110.h,
                                                                  left: 100.w),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Icon(
                                                              Icons.close,
                                                              size: 35.sp,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  RadioGroup(
                                                    controller: radio_controler,
                                                    values: [
                                                      "Change in Plans",
                                                      "Emergencies",
                                                      "Travel Plans"
                                                          "Budget Constraints",
                                                      "Unsatisfactory Service Experience",
                                                      "Availability of Alternatives",
                                                      "Personal Health Issues",
                                                      "Quality ConcernsEmergencies",
                                                      "Change in Laundry Volume",
                                                      "Other",
                                                    ],
                                                    indexOfDefault: 0,
                                                    orientation:
                                                        RadioGroupOrientation
                                                            .vertical,
                                                    decoration:
                                                        RadioGroupDecoration(
                                                      spacing: 20.0,
                                                      labelStyle: TextStyle(
                                                          height: 3.h,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 16.sp,
                                                          fontFamily: 'DM_Sans',
                                                          color: Color(
                                                              0xff000000)),
                                                      activeColor:
                                                          Color(0xff1FACF3),
                                                    ),
                                                  ),
                                                  Gap(14.h),
                                                  SizedBox(
                                                    width: 333.w,
                                                    height: 64.h,
                                                    child: ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                          showModalBottomSheet(
                                                            context: context,
                                                            builder:
                                                                (context) =>
                                                                    Container(
                                                              height: 300.h,
                                                              width: double
                                                                  .infinity.w,
                                                              decoration: BoxDecoration(
                                                                  borderRadius: BorderRadius.only(
                                                                      topLeft: Radius
                                                                          .circular(12
                                                                              .r),
                                                                      topRight:
                                                                          Radius.circular(12
                                                                              .r)),
                                                                  color: Color(
                                                                      0xffFFFFFF)),
                                                              child: Column(
                                                                children: [
                                                                  Gap(37.h),
                                                                  Text(
                                                                    'Booking\nCancelled',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        fontSize: 34
                                                                            .sp,
                                                                        fontFamily:
                                                                            'DM_Sans',
                                                                        color: Color(
                                                                            0xffF1766F)),
                                                                  ),
                                                                  Gap(19.h),
                                                                  Text(
                                                                    'Your  booking successfully cancelled\nsee you next time !',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        fontSize: 14
                                                                            .sp,
                                                                        fontFamily:
                                                                            'DM_Sans',
                                                                        color: Color(
                                                                            0xff000000)),
                                                                  ),
                                                                  Gap(31.h),
                                                                  SizedBox(
                                                                    height:
                                                                        64.h,
                                                                    width:
                                                                        333.w,
                                                                    child: ElevatedButton(
                                                                        onPressed: () {
                                                                          Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => HomePage(),
                                                                              ));
                                                                        },
                                                                        style: ElevatedButton.styleFrom(backgroundColor: Color(0xff1FACF3)),
                                                                        child: Center(
                                                                          child:
                                                                              Text(
                                                                            'Back to home',
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight.w700,
                                                                                fontSize: 16.sp,
                                                                                fontFamily: 'DM_Sans',
                                                                                color: Color(0xffFFFFFF)),
                                                                          ),
                                                                        )),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                backgroundColor:
                                                                    Color(
                                                                        0xff1FACF3)),
                                                        child: Text(
                                                          'Submit',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 16.sp,
                                                              fontFamily:
                                                                  'DM_Sans',
                                                              color: Color(
                                                                  0xffFFFFFF)),
                                                        )),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    color: Color(0xffD14646),
                                    text: 'Yes, Cancel',
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text(
                  'Cancel Booking',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      fontFamily: 'DM_Sans',
                      color: Color(0xffD14646)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ShowbottumsheetInfo extends StatelessWidget {
  final void Function() onpress;
  const ShowbottumsheetInfo({
    super.key,
    required this.onpress,
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 64.h,
        width: 160.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              140.r,
            ),
            color: color),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontFamily: 'DM_Sans',
                fontSize: 16.sp,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
