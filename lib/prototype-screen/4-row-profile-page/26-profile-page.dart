import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/26-profile-page/Bottumsheet_two_Container.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/5-wlcome_back-login.dart';
import 'package:laundry_bin_app/prototype-screen/4-row-profile-page/28-dashboard-page.dart';
import 'package:laundry_bin_app/prototype-screen/4-row-profile-page/29-address-page.dart';
import 'package:laundry_bin_app/prototype-screen/4-row-profile-page/30-faq-page.dart';
import 'package:laundry_bin_app/prototype-screen/4-row-profile-page/31-about_us-page.dart';
import 'package:laundry_bin_app/prototype-screen/4-row-profile-page/32-privacy_policy.dart';
import 'package:laundry_bin_app/prototype-screen/4-row-profile-page/34-history-page.dart';
import 'package:laundry_bin_app/prototype-screen/4-row-profile-page/35-review-page.dart';
import 'package:laundry_bin_app/prototype-screen/4-row-profile-page/36-edit_profile-page.dart';
import 'package:laundry_bin_app/provider_controler/login.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final clearprovider = Provider.of<Loginprovider>(context, listen: false);

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 235.h,
            width: 381.w,
            decoration: BoxDecoration(
                color: Color(0xffC3E5F5),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(40.r))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Gap(24.w),
                    Text(
                      'Profile',
                      style: TextStyle(
                          fontFamily: 'DM_Sans',
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff141521)),
                    ),
                    Image.asset(
                      'asset/images/041-Frame.png',
                      scale: 03.5.sp,
                      color: Colors.blue,
                    )
                  ],
                ),
                Gap(13.h),
                Row(
                  children: [
                    Gap(24.w),
                    Image.asset(
                      'asset/images/042-profile_pic.png',
                      height: 76.h,
                      width: 76.w,
                    ),
                    Gap(16.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Doe',
                          style: TextStyle(
                              fontFamily: 'DM_Sans',
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff141521)),
                        ),
                        Text(
                          '+91 8129862588',
                          style: TextStyle(
                              fontFamily: 'DM_Sans',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff141521)),
                        ),
                        Gap(2.h),
                        Row(
                          children: [
                            Text(
                              'Edit profile',
                              style: TextStyle(
                                  fontFamily: 'DM_Sans',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff1FACF3)),
                            ),
                            Gap(4.w),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EditprofilePage(),
                                    ));
                              },
                              child: Image.asset(
                                'asset/images/043-edit.png',
                                height: 13.h,
                                width: 13.w,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Profile_twoContainer(
                  image: 'asset/images/051-t_shirt.png',
                  text: 'History',
                  onpress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HistoryPage(),
                        ));
                  },
                  gap: 16,
                ),
                Profile_twoContainer(
                  image: 'asset/images/050-contact_us.png',
                  text: 'Contact us',
                  onpress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FaqPage(),
                        ));
                  },
                  gap: 7,
                )
              ],
            ),
          ),
          Gap(33.h),
          ProfilelistView(
            image: 'asset/images/044-Group-dashboard.png',
            text: 'Dashboard',
            onpress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashboardPage(),
                  ));
            },
          ),
          Gap(23.h),
          ProfilelistView(
            image: 'asset/images/045-adress.png',
            text: 'Address',
            onpress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddressPage(),
                  ));
            },
          ),
          Gap(23.h),
          ProfilelistView(
            image: 'asset/images/046-FAQ.png',
            text: 'FAQ',
            onpress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FaqPage(),
                  ));
            },
          ),
          Gap(23.h),
          ProfilelistView(
            image: 'asset/images/047-about_us.png',
            text: 'About Us',
            onpress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AbountusPage(),
                  ));
            },
          ),
          Gap(23.h),
          ProfilelistView(
            image: 'asset/images/048-reviews.png',
            text: 'Reviews',
            onpress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReviewPage(),
                  ));
            },
          ),
          Gap(23.h),
          ProfilelistView(
            image: 'asset/images/049-privacy_policy.png',
            text: 'Privacy policy',
            onpress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrivacypolicyPage(),
                  ));
            },
          ),
          Gap(32.h),
          Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          topRight: Radius.circular(12.r))),
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 200.h,
                      width: 381.w,
                      child: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(top: 20.h, left: 90.w),
                              child: Row(
                                children: [
                                  Text(
                                    'Are You Sure',
                                    style: TextStyle(
                                        fontFamily: 'DM_Sans',
                                        fontSize: 34.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff000000)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 45.w, bottom: 30.h),
                                      child: Icon(
                                        Icons.close,
                                        size: 28.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Gap(8.h),
                          Text(
                            'Do You want to Log out  ?',
                            style: TextStyle(
                                fontFamily: 'DM_Sans',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff99AABA)),
                          ),
                          Gap(15.h),
                          Padding(
                            padding: EdgeInsets.only(left: 24.w, right: 24.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Bottumsheet_two_Container(
                                  color: Color(0xff1FACF3),
                                  buttonpress: () {
                                    Navigator.pop(context);
                                  },
                                  text: 'no',
                                ),
                                Bottumsheet_two_Container(
                                  buttonpress: () {
                                    clearprovider.deleteData();

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              WelcomebackLogin(),
                                        ));
                                  },
                                  color: Color(0xffD14646),
                                  text: 'Yes, Log out',
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Row(
                children: [
                  Image.asset(
                    'asset/images/052-logout.png',
                    height: 26.h,
                    width: 26.w,
                  ),
                  Gap(16.w),
                  Text(
                    'Logout',
                    style: TextStyle(
                        fontFamily: 'DM_Sans',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffD14646)),
                  )
                ],
              ),
            ),
          ),
          Gap(31.h),
          Text(
            'V1.02.01',
            style: TextStyle(
                fontFamily: 'DM_Sans',
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff6E97AE)),
          )
        ],
      ),
      backgroundColor: Color(0xffECF3F6),
    );
  }
}

class Profile_twoContainer extends StatelessWidget {
  const Profile_twoContainer({
    super.key,
    required this.image,
    required this.text,
    required this.gap,
    this.onpress,
  });
  final String image;
  final String text;
  final int gap;
  final void Function()? onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 60.h,
        width: 159.w,
        decoration: BoxDecoration(
            color: Color(0xff34D5E5),
            borderRadius: BorderRadius.circular(30.r)),
        child: Padding(
          padding: EdgeInsets.only(left: 7.w, right: 12.w),
          child: Row(
            children: [
              Container(
                height: 46.h,
                width: 46.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(78, 255, 255, 255)),
                child: Center(
                  child: Image.asset(
                    image,
                    height: 30.h,
                    width: 30.w,
                  ),
                ),
              ),
              Gap(gap.w),
              Text(
                text,
                style: TextStyle(
                    fontFamily: 'DM_Sans',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFFFFF)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilelistView extends StatelessWidget {
  const ProfilelistView(
      {super.key, required this.text, required this.image, this.onpress});
  final String text;
  final String image;
  final void Function()? onpress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, right: 20.w),
      child: GestureDetector(
        onTap: onpress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(image, height: 21.h, width: 21.w),
                Gap(21.w),
                Text(
                  text,
                  style: TextStyle(
                      fontFamily: 'DM_Sans',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff141521)),
                )
              ],
            ),
            Icon(
              Icons.keyboard_arrow_right,
              size: 25.sp,
            )
          ],
        ),
      ),
    );
  }
}
