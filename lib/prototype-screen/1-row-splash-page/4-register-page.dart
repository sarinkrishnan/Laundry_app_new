import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/controler/register.dart';
import 'package:laundry_bin_app/extract_items/01-splash_page-prototype/01-textfeild_splash_pages.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back_white_button.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/5-wlcome_back-login.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/11-home-page.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

TextEditingController name = TextEditingController();
TextEditingController e_mail = TextEditingController();
TextEditingController password = TextEditingController();
// TextEditingController phoneNumber = TextEditingController();

int? phoneNumber;

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                controler: name,
                validator: (p0) {
                  if (name.text.isEmpty) {
                    return 'Please enter your name';
                  } else {
                    throw '';
                  }
                },
              ),
              Gap(15.h),
              TextfeildText(
                controler: e_mail,
                text: 'Enter Email ID or Phone Number',
                validator: (p0) {
                  if (e_mail.text.isEmpty) {
                    return 'Enter Email ID or Phone Number';
                  } else {
                    throw '';
                  }
                },
              ),
              Gap(15.h),
              TextfeildText(
                text: 'Enter your password',
                controler: password,
                validator: (p0) {
                  if (password.text.isEmpty) {
                    return "please enter the password";
                  } else {
                    throw "";
                  }
                },
              ),
              Gap(15.h),
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 27.w),
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  keyboardType: TextInputType.number,
                  // controller: phoneNumber,
                  onSaved: (value) => phoneNumber = int.parse(value!),
                  decoration: InputDecoration(
                      fillColor: Color(0xffFFFFFFFF),
                      filled: true,
                      labelText: 'Phone Number',
                      contentPadding: EdgeInsets.only(left: 32.w, top: 45.h),
                      labelStyle:
                          TextStyle(color: Color.fromARGB(66, 57, 51, 51)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(100.r))),
                  validator: (value) {
                    if (!RegExp(r'^[0-9]+$').hasMatch(value!)) {
                      return 'Please enter a valid phone number';
                    }
                    return null;
                  },
                ),
              ),
              Gap(15.h),
              Center(
                child: SizedBox(
                    height: 63.h,
                    width: 333.w,
                    child: ElevatedButton(
                      onPressed: () {
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
      ]),
    );
  }
}
