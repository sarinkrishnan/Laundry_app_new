import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/controler/register.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back_white_button.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/5-wlcome_back-login.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  late String name, email, password;
  late int phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1FACF3),
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(top: 425.h),
          child: Opacity(
            opacity: 0.3,
            child: Image.asset(
              'asset/images/splash-row-4.png',
              height: 399.h,
              width: 317.w,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: White_backArrow()),
                Gap(90.h),
                Center(
                  child: Text(
                    'Hey There !\nWelcomer',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontFamily: 'DM_Sans',
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                Gap(90.h),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.w, right: 27.w),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(140.r)),
                          contentPadding: EdgeInsets.only(
                              left: 35.w, top: 24.h, bottom: 24.h),
                          label: Text(
                            'Enter Name',
                            style: TextStyle(
                                color: Color.fromARGB(108, 131, 145, 161),
                                fontWeight: FontWeight.w500,
                                fontSize: 15.sp),
                          )),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                      onSaved: (value) => name = value!,
                    ),
                  ),
                ),
                Gap(15.h),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.w, right: 27.w),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(140.r)),
                          contentPadding: EdgeInsets.only(
                              left: 35.w, top: 24.h, bottom: 24.h),
                          label: Text(
                            'Enter Email ID ',
                            style: TextStyle(
                                color: Color.fromARGB(108, 131, 145, 161),
                                fontWeight: FontWeight.w500,
                                fontSize: 15.sp),
                          )),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Email';
                        }
                        return null;
                      },
                      onSaved: (value) => email = value!,
                    ),
                  ),
                ),
                Gap(15.h),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.w, right: 27.w),
                    child: TextFormField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(140.r)),
                            contentPadding: EdgeInsets.only(
                                left: 35.w, top: 24.h, bottom: 24.h),
                            label: Text(
                              'Enter your phonenumber',
                              style: TextStyle(
                                  color: Color.fromARGB(108, 131, 145, 161),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.sp),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          }
                          if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                            return 'Please enter a valid phone number';
                          }
                          return null;
                        },
                        onSaved: (value) => phoneNumber = int.parse(value!),
                        // obscureText: true,
                        keyboardType: TextInputType.number),
                  ),
                ),
                Gap(15.h),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.w, right: 27.w),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(140.r)),
                          contentPadding: EdgeInsets.only(
                              left: 35.w, top: 24.h, bottom: 24.h),
                          label: Text(
                            'enter your password',
                            style: TextStyle(
                                color: Color.fromARGB(108, 131, 145, 161),
                                fontWeight: FontWeight.w500,
                                fontSize: 15.sp),
                          )),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      onSaved: (value) => password = value!,
                    ),
                  ),
                ),
                Gap(15.h),
                Center(
                  child: SizedBox(
                      height: 63.h,
                      width: 333.w,
                      child: ElevatedButton(
                        onPressed: () {
                          //   if (_formKey.currentState!.validate()) {
                          //     _formKey.currentState!.save();
                          //     Provider.of<RegisterProvider>(context,
                          //             listen: false)
                          //         .registerData(name.text, email.text,
                          //             password.text, int.parse(phoneNumber.text));
                          //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          //       shape: ContinuousRectangleBorder(
                          //           borderRadius: BorderRadius.circular(10)),
                          //       content: Text(
                          //         'Registration successful!',
                          //       ),
                          //       backgroundColor:
                          //           const Color.fromARGB(255, 54, 244, 67),
                          //       padding: EdgeInsets.only(
                          //           left: 150, top: 15, bottom: 15),
                          //     ));
                          //   } else {
                          //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          //       shape: ContinuousRectangleBorder(
                          //           borderRadius: BorderRadius.circular(10)),
                          //       content: Text(
                          //         'Registration failed',
                          //       ),
                          //       backgroundColor: Colors.red,
                          //       padding: EdgeInsets.only(
                          //           left: 150, top: 15, bottom: 15),
                          //     ));
                          //   }
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            Provider.of<RegisterProvider>(context,
                                    listen: false)
                                .registerData(
                                    name, email, password, phoneNumber)
                                .then(
                              (_) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor: Colors.greenAccent,
                                      content:
                                          Text('Registration successful!')),
                                );
                              },
                            ).catchError((error) {
                            
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(
                                  'Registration failed: $error',
                                ),
                                backgroundColor: Colors.red,
                              ));
                            });
                          }
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontFamily: 'DM_Sans',
                              color: Color(0xff1FACF3),
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp),
                        ),
                      )),
                ),
                Gap(36.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '     Already have an account?',
                      style: TextStyle(
                          fontFamily: 'DM_Sans',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFFFFFF)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WelcomebackLogin(),
                            ));
                      },
                      child: Text(
                        '  Log In',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'DM_Sans',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFFFFFF)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
