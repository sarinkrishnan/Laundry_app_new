import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/prototype-screen/4-row-profile-page/26-profile-page.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Column(
          children: [
            Gap(50.h),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ));
                  },
                  child: Icon(
                    Icons.keyboard_backspace_sharp,
                    size: 32.sp,
                  ),
                ),
                Gap(90.w),
                Text(
                  'Address',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      fontFamily: 'DM_Sans',
                      color: Color(0xff141521)),
                )
              ],
            ),
            Gap(32.h),
            AdresspageContainer(
                text: 'Home',
                droup_down: () {
                  ListTile(
                    title: Text('edit'),
                    trailing: PopupMenuButton<String>(
                      itemBuilder: (context) => [
                        PopupMenuItem<String>(
                          child: Text('asd'),
                          value: 'asd',
                        ),
                        PopupMenuItem<String>(
                          child: Text('ppp'),
                          value: 'ppp',
                        )
                      ],
                      onSelected: (value) {
                        setState(() {});
                      },
                    ),
                  );
                }),
            Gap(12.h),
            AdresspageContainer(
              text: 'Office',
            )
          ],
        ),
      ),
    );
  }
}

class AdresspageContainer extends StatelessWidget {
  const AdresspageContainer({
    super.key,
    required this.text,
    this.droup_down,
  });
  final String text;
  final void Function()? droup_down;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124.h,
      width: 333.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), color: Color(0xffFFFFFF)),
      child: Padding(
        padding: EdgeInsets.only(left: 13.w, top: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      fontFamily: 'DM_Sans',
                      color: Color(0xff200F33)),
                ),
                GestureDetector(
                  onTap: droup_down,
                  child: Image.asset(
                    'asset/images/058-two_doubt.png',
                    height: 35.h,
                    width: 24.w,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 18.h),
                  child: Image.asset(
                    'asset/images/059-location.png',
                    height: 14.h,
                    width: 14.w,
                  ),
                ),
                Gap(13.w),
                Text(
                  '19 Cross, between Hufuf and, Al\nKhobar 34446, Saudi Arabia',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      fontFamily: 'DM_Sans',
                      color: Color(0xff141521)),
                )
              ],
            ),
            Gap(8.h),
            Row(
              children: [
                Image.asset(
                  'asset/images/060-call.png',
                  height: 14.h,
                  width: 14.w,
                ),
                Gap(13.w),
                Text(
                  '+966 8415698625',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      fontFamily: 'DM_Sans',
                      color: Color(0xff141521)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
