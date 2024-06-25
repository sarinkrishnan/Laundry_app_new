import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back_white_button.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/5-login.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/11-home-page.dart';
import 'package:laundry_bin_app/provider_controler/otp.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

class EnterOtp extends StatefulWidget {
  @override
  State<EnterOtp> createState() => _EnterOtpState();
}

class _EnterOtpState extends State<EnterOtp> {
  TextEditingController _otp = TextEditingController();
  final _fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final provideerr = Provider.of<otpProvider>(context, listen: false);

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              key: _fromkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WelcomebackLogin(),
                            ));
                      },
                      child: White_backArrow()),
                  Gap(71.h),
                  Center(
                    child: Text(
                      'We Have Sent\nYou An OTP',
                      style: TextStyle(
                          fontFamily: 'DM_Sans',
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Gap(25.h),
                  Center(
                    child: Pinput(
                      controller: _otp,
                      length: 4,
                      keyboardType: TextInputType.number,
                      separatorBuilder: (index) => Gap(20.w),
                      defaultPinTheme: PinTheme(
                          textStyle: TextStyle(color: Colors.black),
                          width: 69.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(9.r))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter OTP';
                        }
                        return null;
                      },
                    ),
                  ),
                  Gap(17.h),
                  Center(
                    child: Opacity(
                      opacity: .8,
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Don’t recive OTP?  ',
                            style: TextStyle(
                                fontFamily: 'DM_Sans',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500)),
                        TextSpan(
                            text: 'RESENT OTP',
                            style: TextStyle(
                                fontFamily: 'DM_Sans',
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp))
                      ])),
                    ),
                  ),
                  Gap(385.h),
                  Center(
                    child: SizedBox(
                        height: 64.h,
                        width: 333.w,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_fromkey.currentState!.validate()) {
                              _fromkey.currentState!.save();
                              provideerr.getOtp(_otp.text).then((_) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'OTP verified',
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
                                      builder: (context) => HomePage(),
                                    ));
                              }).catchError((e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'verified faild',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              });
                            }
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(
                                fontFamily: 'DM_Sans',
                                color: Color(0xff1FACF3),
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
