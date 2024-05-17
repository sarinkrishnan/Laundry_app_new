import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundry_bin_app/extract_items/app_bar/app_bar.dart';
import 'package:laundry_bin_app/extract_items/credit_card_page/Credit_card_visa_Card.dart';
import 'package:laundry_bin_app/extract_items/credit_card_page/bottum_elivatedbottun.dart';
import 'package:laundry_bin_app/extract_items/credit_card_page/small_text_box_cvv.dart';
import 'package:laundry_bin_app/extract_items/credit_card_page/text_feild_data.dart';
import 'package:laundry_bin_app/extract_items/splashpage-back_white_button/splash-back-black_button.dart';
import 'package:laundry_bin_app/prototype-screen/2-row-home-page/14-summary-page.dart';

class CreditcardPage extends StatefulWidget {
  const CreditcardPage({super.key});

  @override
  State<CreditcardPage> createState() => _CreditcardPageState();
}

TextEditingController holder_name = TextEditingController();
TextEditingController card_number = TextEditingController();
TextEditingController ccv = TextEditingController();
TextEditingController exp = TextEditingController();
bool ischecked = false;

class _CreditcardPageState extends State<CreditcardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffECF3F6),
        title: AppbarAll(
          text: 'Credit card',
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SummaryPage()));
            },
            child: Black_Backarrow()),
      ),
      backgroundColor: Color(0xffECF3F6),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(15.h),
              Credit_card_visa_Card(),
              Gap(24.h),
              Text(
                'Or add new card details',
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff200F33),
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.w700),
              ),
              Gap(16.h),
              TextfeildData(
                text_controler: holder_name,
                text: 'Card holder name',
              ),
              Gap(13.h),
              TextfeildData(text_controler: card_number, text: 'Card number'),
              Gap(13.h),
              Row(
                children: [
                  SmalltextBox(
                    text_cvv_and_expcontroler: ccv,
                    Text: 'CVV',
                  ),
                  Gap(11.w),
                  SmalltextBox(text_cvv_and_expcontroler: exp, Text: 'Exp')
                ],
              ),
              Gap(24.h),
              Row(
                children: [
                  Checkbox(
                    activeColor: Color(0xff1FACF3),
                    value: ischecked,
                    onChanged: (value) {
                      setState(() {
                        ischecked = value!;
                      });
                    },
                  ),
                  Text(
                    'Save for future',
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xff141521),
                        fontFamily: 'DM_Sans',
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Gap(74.h),
              Bottum_elivatedBottun(
                text: 'Pay',
                text1: ' \$499',
              )
            ],
          ),
        ),
      ),
    );
  }
}
