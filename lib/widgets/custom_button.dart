import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(30).w,

          ),
          child: Center(child: Text(text,style: kFirstTextStyle.copyWith(
              fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),),),
        ),
      ),
    );
  }
}
