import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListviewBuilder extends StatefulWidget {
  ListviewBuilder({
    super.key,
    required this.image,
    required this.text,
    required this.price,
  });
  final String image;
  final String text;
  final String price;

  @override
  State<ListviewBuilder> createState() => _ListviewBuilderState();
}

class _ListviewBuilderState extends State<ListviewBuilder> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(widget.image, height: 47.h, width: 47.w),
        Text(
          widget.text,
          style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xff141521),
              fontFamily: 'DM_Sans'),
        ),
        Text(
          widget.price,
          style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xff141521),
              fontFamily: 'DM_Sans'),
        ),
        count == 0
            ? ElevatedButton(
                onPressed: () {
                  count++;

                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff1FACF3)),
                child: Text(
                  '+Add',
                  style: TextStyle(
                      fontFamily: 'DM_Sans',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
              )
            : Container(
                height: 38.h,
                width: 104.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffECF3F6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        count--;
                        setState(() {});
                      },
                      child: Container(
                        height: 32.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffFFFFFF)),
                        child: Center(
                          child: Icon(Icons.remove),
                        ),
                      ),
                    ),
                    Text(
                      count.toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'DM_Sans',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      onTap: () {
                        count++;
                        setState(() {});
                      },
                      child: Container(
                        height: 32.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffFFFFFF)),
                        child: Center(
                          child: Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
              )
      ],
    );
  }
}
