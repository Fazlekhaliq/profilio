import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/custom_text.dart';

import '../utils/app_color.dart';

class RoundedButton extends StatelessWidget {

  void Function() skipTap;
  void Function() nextTap;

   RoundedButton({super.key,
      required this.skipTap,required this.nextTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: skipTap,
          child: Container(

            height: 45.h,
            width: 155.w,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.roundColor.withOpacity(0.48),width: 3),
              borderRadius: BorderRadius.circular(30).w,
             color: Colors.white,
            ),
            child: Center(child: CustomText(text:"Skip",style: kFormTextStyle.copyWith(

            ),)),
          ),
        ),
        SizedBox(width: 15.w,),
        InkWell(
          onTap: nextTap,
          child: Container(
            height: 45.h,
            width: 155.w,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.roundColor.withOpacity(0.48),width: 3),
              borderRadius: BorderRadius.circular(30).w,
              color: Colors.blue,
            ),
            child: Center(child: CustomText(text: "Next",style: kFormTextStyle.copyWith(
              color: Colors.white
            ),)),
          ),
        ),
      ],
    );
  }
}
