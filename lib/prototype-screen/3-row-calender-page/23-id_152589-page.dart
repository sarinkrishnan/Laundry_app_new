import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/21-order_page/ratingSheet.dart';
import 'package:laundry_bin_app/extract_items/id_page-one/Id_page_stack_Information.dart';
import 'package:laundry_bin_app/extract_items/id_page-two/Idpage_twoContainer.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back-black_button.dart';
import 'package:laundry_bin_app/prototype-screen/3-row-calender-page/21-order-page.dart';

class IdpageTwo extends StatefulWidget {
  const IdpageTwo({super.key});

  @override
  State<IdpageTwo> createState() => _IdpageTwoState();
}

bool isSelected = false;

class _IdpageTwoState extends State<IdpageTwo> {
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
          children: [
            Container(
              height: 93.h,
              width: 333.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: Color(0xffFFFFFF)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.w, top: 6.h),
                    child: GestureDetector(
                      onTap: () {
                        ratingSheet(
                          context,
                        );
                      },
                      child: Text(
                        'Add Rating',
                        style: TextStyle(
                            color: Color(0xff1FACF3),
                            fontFamily: 'DM_Sans',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h, left: 41.w),
                    child: RatingBar.builder(
                      initialRating: 0,
                      minRating: 0,
                      unratedColor: Color(0xffE6F2F3),
                      itemCount: 5,
                      itemSize: 36.sp,
                      itemPadding: EdgeInsets.symmetric(horizontal: 6.w),
                      updateOnDrag: true,
                      itemBuilder: (context, index) =>
                          Image.asset('asset/images/037-blue-Star.png'),
                      onRatingUpdate: (value) {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Gap(12.h),
            Idpage_twoContainer(
              text: 'Pickup',
            ),
            Gap(12.h),
            Idpage_twoContainer(
              text: 'Delivery (Express)',
            ),
            Gap(12.h),
            Id_page_stack_Information()
          ],
        ),
      ),
    );
  }
}
