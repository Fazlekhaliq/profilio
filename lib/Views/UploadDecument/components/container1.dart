import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/utils/app_images.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/custom_text.dart';

import '../../../utils/app_color.dart';

class Container1 extends StatelessWidget {
  final String text;
  const Container1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        height: 150.h,
        width: 325.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10).w,
            boxShadow: [
              BoxShadow(
                  color: AppColors.shadowColor.withOpacity(0.10),
                  offset: Offset(2, 2),
                  blurRadius: 10,
                  spreadRadius: 0

              )
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.importIcon),
            SizedBox(height: 7.h,),
            CustomText(text: text, style: kSecondTextStyle)

          ],
        ),
      ),
    );
  }
}
