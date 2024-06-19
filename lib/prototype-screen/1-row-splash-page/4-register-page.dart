import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/controler/register.dart';
import 'package:laundry_bin_app/extract_items/01-splash_page-prototype/01-textfeild_splash_pages.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back_white_button.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/5-wlcome_back-login.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  late TextEditingController email = TextEditingController();
  late TextEditingController password = TextEditingController();
  final TextEditingController phonenumber = TextEditingController();

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
                TextfeildText(
                  text: 'Enter Name',
                  // onSaveddata: (p0) => name = p0!,
                  controler: name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return '';
                  },
                ),
                Gap(15.h),
                TextfeildText(
                  controler: email,
                  // onSaveddata: (p0) => e_mail = p0!,
                  text: 'Enter Email ID or Phone Number',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter the email';
                    }
                    return '';
                  },
                ),
                Gap(15.h),
                TextfeildText(
                  controler: password,
                  text: 'Enter your password',
                  // onSaveddata: (p0) => password = p0!,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return '';
                  },
                ),
                Gap(15.h),
                TextfeildText(
                  controler: phonenumber,

                  text: 'Phone Number',
                  // onSaveddata: (p0) => phoneNumber = int.parse(p0!),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phonenumber';
                    }
                    return '';
                  },
                ),
                Gap(15.h),
                Center(
                  child: SizedBox(
                      height: 63.h,
                      width: 333.w,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            Provider.of<RegisterProvider>(context,
                                    listen: false)
                                .registerData(name.text, email.text,
                                    password.text, int.parse(phonenumber.text));
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              content: Text(
                                'Registration successful!',
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 54, 244, 67),
                              padding: EdgeInsets.only(
                                  left: 150, top: 15, bottom: 15),
                            ));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              content: Text(
                                'Registration failed',
                              ),
                              backgroundColor: Colors.red,
                              padding: EdgeInsets.only(
                                  left: 150, top: 15, bottom: 15),
                            ));
                          }
                          //   if (_formKey.currentState!.validate()) {
                          //     // _formKey.currentState!.save();
                          //     Provider.of<RegisterProvider>(context,
                          //             listen: false)
                          //         .registerData(name.text, email.text,
                          //             password.text, int.parse(phonenumber.text))
                          //         .then(
                          //       (_) {
                          //         ScaffoldMessenger.of(context).showSnackBar(
                          //           SnackBar(
                          //               backgroundColor: Colors.greenAccent,
                          //               content:
                          //                   Text('Registration successful!')),
                          //         );
                          //       },
                          //     ).catchError((error) {
                          //       print(error);
                          //       ScaffoldMessenger.of(context)
                          //           .showSnackBar(SnackBar(

                          //         content: Text('Registration failed: ${error}', ),
                          //         backgroundColor: Colors.red,
                          //       ));
                          //     });
                          //   }
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
