import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundry_bin_app/provider_controler/forgetpassword.dart';
import 'package:laundry_bin_app/provider_controler/homepage.dart';
import 'package:laundry_bin_app/provider_controler/login.dart';
import 'package:laundry_bin_app/provider_controler/otp.dart';
import 'package:laundry_bin_app/provider_controler/register.dart';
import 'package:laundry_bin_app/prototype-screen/1-row-splash-page/1-splash-welcome-1.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(381, 824),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => registorProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => Loginprovider(),
            ),
            ChangeNotifierProvider(
              create: (context) => otpProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => forgetpassswordProvider(),
            ),
             ChangeNotifierProvider(
              create: (context) => HomepageProvider(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          ),
        );
      },
      child: SplashOne(),
    );
  }
}
