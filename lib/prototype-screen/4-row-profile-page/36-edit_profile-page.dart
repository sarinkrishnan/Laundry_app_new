import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/11-home-page.dart';

class EditprofilePage extends StatefulWidget {
  const EditprofilePage({super.key});

  @override
  State<EditprofilePage> createState() => _EditprofilePageState();
}

class _EditprofilePageState extends State<EditprofilePage> {
  XFile? image;
  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController number = TextEditingController();

    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 55.h),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.keyboard_backspace,
                        size: 30.sp,
                      ),
                    ),
                    Gap(75.w),
                    Text(
                      'Profile Details',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xff141521)),
                    )
                  ],
                ),
              ),
              Gap(48.h),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                      height: 94.h,
                      width: 94.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          height: 85.h,
                          width: 85.w,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent, shape: BoxShape.circle),
                          child: image == null
                              ? Text('Sorry')
                              : Image.file(
                                  File(image!.path),
                                  fit: BoxFit.cover,
                                ),
                        ),
                      )),
                  Positioned(
                    height: 135.h,
                    left: 65.w,
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          scrollControlDisabledMaxHeightRatio: .4,
                          context: context,
                          builder: (context) {
                            return Padding(
                                padding: EdgeInsets.only(top: 68.h),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: 45.h,
                                        width: 53.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.close,
                                          size: 26.sp,
                                        ),
                                      ),
                                    ),
                                    Gap(15.h),
                                    Container(
                                      height: 200.h,
                                      width: double.infinity.w,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10.r),
                                              topRight: Radius.circular(10.r)),
                                          color: Colors.white),
                                      child: Column(
                                        children: [
                                          Gap(18.h),
                                          DeleteandChange(
                                            text: 'Delete profile pic',
                                            change_pic: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage(),
                                                  ));
                                            },
                                          ),
                                          Gap(17.h),
                                          DeleteandChange(
                                            text: 'Change profile pic',
                                            change_pic: () {
                                              Navigator.pop(context);
                                              showDialog<String>(
                                                context: context,
                                                builder:
                                                    (BuildContext context) =>
                                                        AlertDialog(
                                                  title: Text(
                                                    'choose your image',
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                  actions: <Widget>[
                                                    TextButton(
                                                        onPressed: () async {
                                                          final ImagePicker
                                                              pick =
                                                              ImagePicker();
                                                          image = await pick
                                                              .pickImage(
                                                                  source: ImageSource
                                                                      .gallery);
                                                          setState(() {});
                                                        },
                                                        child: Text(
                                                          'Gallery',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff141521)),
                                                        )),
                                                    TextButton(
                                                        onPressed: () async {
                                                          final ImagePicker
                                                              pick =
                                                              ImagePicker();

                                                          image = await pick
                                                              .pickImage(
                                                                  source:
                                                                      ImageSource
                                                                          .camera);
                                                          setState(() {});
                                                        },
                                                        child: Text(
                                                          'Camara',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff141521)),
                                                        ))
                                                  ],
                                                ),
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ));
                          },
                        );
                      },
                      child: Container(
                        height: 34.h,
                        width: 34.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffFFFFFF)),
                        child: Center(
                          child: Image.asset(
                            'asset/images/043-edit.png',
                            height: 17.h,
                            width: 17.w,
                          ),
                        ),
                      ),
                    ),
                  ),

                  //  top: 55.h,
                  //  left: 65.w,
                  //  child: GestureDetector(
                  //  onTap: () {
                  // showModalBottomSheet(
                  //   backgroundColor: Colors.transparent,
                  //   scrollControlDisabledMaxHeightRatio: .4,
                  //   context: context,
                  //   builder: (context) {
                  //     return Padding(
                  //       padding: EdgeInsets.only(top: 68.h),
                  //       child: Column(
                  //         children: [
                  //           GestureDetector(
                  //             onTap: () {
                  //               Navigator.pop(context);
                  //             },
                  //             child: Container(
                  //               height: 45.h,
                  //               width: 53.w,
                  //               decoration: BoxDecoration(
                  //                   color: Color(0xffFFFFFF),
                  //                   shape: BoxShape.circle),
                  //               child: Icon(
                  //                 Icons.close,
                  //                 size: 26.sp,
                  //               ),
                  //             ),
                  //           ),
                  //           Gap(15.h),
                  //           Container(
                  //             height: 200.h,
                  //             width: double.infinity.w,
                  //             decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.only(
                  //                     topLeft: Radius.circular(10.r),
                  //                     topRight: Radius.circular(10.r)),
                  //                 color: Colors.white),
                  //             child: Column(
                  //               children: [
                  //                 Gap(18.h),
                  //                 DeleteandChange(
                  //                   text: 'Delete profile pic',
                  //                 ),
                  //                 Gap(17.h),
                  //                 DeleteandChange(
                  //                   text: 'Change profile pic',
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     );
                  //   },
                  // );

                  //       'asset/images/043-edit.png',
                  //       height: 17.h,
                  //       width: 17.w,
                  //     ),
                  //   ),
                  // ),
                  // ),
                ],
              ),
              Gap(45.h),
              EditprofileTextfeild(
                controler_text: name,
                text: 'John Doe',
              ),
              Gap(12.h),
              EditprofileTextfeild(
                text: 'Add Email ID',
                controler_text: email,
              ),
              Gap(12.h),
              EditprofileTextfeild(
                text: '+91 8129862588',
                controler_text: number,
              ),
              Gap(240.h),
              SizedBox(
                height: 64.h,
                width: 333.w,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff1FACF3)),
                    child: Text(
                      'Save',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          fontFamily: 'DM_Sans',
                          color: Color(0xffFFFFFF)),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DeleteandChange extends StatelessWidget {
  const DeleteandChange({
    super.key,
    required this.text,
    this.change_pic,
  });
  final String text;
  final void Function()? change_pic;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.h,
      width: 333.w,
      child: ElevatedButton(
          onPressed: change_pic,
          style: ElevatedButton.styleFrom(
              side: BorderSide(color: Color(0xff1FACF3)),
              backgroundColor: Color(0xffFFFFFF)),
          child: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
                fontFamily: 'DM_Sans',
                color: Color(0xff1FACF3)),
          )),
    );
  }
}

class EditprofileTextfeild extends StatelessWidget {
  const EditprofileTextfeild({
    super.key,
    required this.text,
    required this.controler_text,
  });
  final String text;
  final TextEditingController controler_text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controler_text,
      style: TextStyle(color: Colors.black),
      enabled: true,
      decoration: InputDecoration(
          enabled: true,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffDADADADA),
              ),
              borderRadius: BorderRadius.circular(140.r)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(140.r),
              borderSide: BorderSide(color: Color(0xffDADADADA))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffDADADA),
              ),
              borderRadius: BorderRadius.circular(140.r)),
          contentPadding: EdgeInsets.only(left: 35.w, top: 24.h, bottom: 24.h),
          hintText: text,
          hintStyle: TextStyle(color: Color.fromARGB(255, 173, 170, 170)),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(140.r))),
    );
  }
}
