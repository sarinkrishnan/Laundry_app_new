import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/14-summary-page.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/19-map2-location-page.dart';

class MaplocationPage extends StatelessWidget {
  const MaplocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            'asset/images/018-map-page.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          GestureDetector(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SummaryPage(),));
          }, child: Map_whiteContainer()),
          Padding(
            padding: EdgeInsets.only(top: 112.h, left: 24.w),
            child: SizedBox(
                height: 54.h,
                width: 333.w,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      hintText: 'Search for your location',
                      hintStyle: TextStyle(
                          color: Color(0xff141521),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'DM_Sans'),
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12.r))),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 318.h, left: 20.w),
            child: SizedBox(
              height: 110.h,
              width: 342.w,
              child: Image.asset(
                'asset/images/020-Union-card.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 325.h, left: 90.w),
            child: Text(
              '319  Cross,  between  Hufuf  and,  Al\n  Khob...',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontFamily: 'DM_Sans',
                  fontWeight: FontWeight.w600,
                  color: Color(0xff141521)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 390.h, left: 177.w),
            child: Image.asset(
              'asset/images/019-location.png',
              width: 31.w,
              height: 53.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 691.h, left: 101.w),
            child: Text(
              'Move the point to adjust',
              style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xff200F33),
                  fontFamily: 'DM_Sans',
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 735.h, left: 24.w),
            child: Map_eleivatedButton(text: 'Confirm'),
          )
        ],
      ),
    );
  }
}

class Map_whiteContainer extends StatelessWidget {
  const Map_whiteContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 45.h, left: 18.w),
      child: Container(
        height: 43.h,
        width: 43.w,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Color(0xffFFFFFF)),
        child: Icon(
          Icons.keyboard_backspace,
        ),
      ),
    );
  }
}

class Map_eleivatedButton extends StatelessWidget {
  const Map_eleivatedButton({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.h,
      width: 333.w,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MaplocationTwo(),
              ));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff1FACF3),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 16.sp,
                color: Color(0xffFFFFFF),
                fontFamily: 'DM_Sans',
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
