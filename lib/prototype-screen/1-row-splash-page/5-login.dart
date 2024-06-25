import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back_white_button.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/3-login_&_register.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/4-register-page.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/6-sent-otp.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/7-forget-password.dart';
import 'package:laundry_bin_app/provider_controler/login.dart';
import 'package:provider/provider.dart';

class WelcomebackLogin extends StatefulWidget {
  @override
  State<WelcomebackLogin> createState() => _WelcomebackLoginState();
}

class _WelcomebackLoginState extends State<WelcomebackLogin> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provide = Provider.of<Loginprovider>(context, listen: false);
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff1FACF3),
      body: Stack(
        children: [
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
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginRegister(),
                            ));
                      },
                      child: White_backArrow()),
                  Gap(135.h),
                  Center(
                    child: Text(
                      'Welcome Back! Glad\nTo See You, Again!',
                      style: TextStyle(
                          fontFamily: 'DM_Sans',
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Gap(175.h),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, right: 27.w),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: 35.w, top: 23.h, bottom: 23.h),
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          hintText: 'Enter your email or Phone number',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(97, 0, 0, 0),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(140.r))),

                      // return 'please enter your correct email';

                      controller: _email,
                    ),
                  ),
                  Gap(15.h),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, right: 27.w),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: 35.w, top: 23.h, bottom: 23.h),
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          hintText: 'enter your password',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(97, 0, 0, 0),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp),
                          suffixIcon: Image.asset(
                            'asset/images/01-eye.png',
                            scale: 3.5.sp,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(140.r))),
                      controller: _password,
                    ),
                  ),
                  Gap(10.h),
                  Center(
                    child: SizedBox(
                        height: 64.h,
                        width: 333.w,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_email.text.isEmpty || _password.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'please fill the columns ! ',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  backgroundColor:
                                      Color.fromARGB(255, 193, 1, 1),
                                ),
                              );
                            } else {
                              _formkey.currentState!.save();
                              provide
                                  .loginuser(_email.text, _password.text)
                                  .then((_) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'login success',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    backgroundColor:
                                        Color.fromARGB(255, 13, 248, 5),
                                  ),
                                );
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EnterOtp(email: _email.text,password: _password.text,),
                                    ));
                                
                              }).catchError((e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'username or password in correct !  ',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    backgroundColor:
                                        Color.fromARGB(255, 193, 1, 1),
                                  ),
                                );
                              });
                            }

                        
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFFFFFF)),
                          child: Text(
                            'Log In',
                            style: TextStyle(
                                fontFamily: 'DM_Sans',
                                color: Color(0xff1FACF3),
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp),
                          ),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetPassword(),
                          ));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 24.w, top: 15.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontFamily: 'DM_Sans',
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(45.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account?',
                          style: TextStyle(
                              fontFamily: 'DM_Sans',
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp),
                        ),
                        Text(
                          ' Register Now',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              fontFamily: 'DM_Sans',
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
