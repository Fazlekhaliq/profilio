import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/custom_text.dart';

class RoundedButton extends StatelessWidget {
  Color color;
  String text;
  void Function() onTap;
  BoxBorder? border;
  Color? textColor;
   RoundedButton({super.key,
     this.border,
     this.textColor,
 required this.color,required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45.h,
        width: 155.w,
        decoration: BoxDecoration(
          border: border,
          borderRadius: BorderRadius.circular(30).w,
          color: color,
        ),
        child: Center(child: CustomText(text: text,style: kFormTextStyle.copyWith(
          color: textColor,
        ),)),
      ),
    );
  }
}
