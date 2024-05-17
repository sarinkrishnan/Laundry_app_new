
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreditcardSmallcontainer extends StatelessWidget {
  const CreditcardSmallcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      width: 5.w,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
    );
  }
}
