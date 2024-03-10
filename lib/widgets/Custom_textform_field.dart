// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/custom_text.dart';

class CustomTextFormField extends StatelessWidget {

  TextEditingController? controller;
  String? Function(String?)? validator;
  String? hintText;
  String?    labelText;

  TextInputType? keyboardType;
  TextStyle? style;
  Widget? suffixIcon;
  Widget? prefixIcon;

  CustomTextFormField({
    super.key,
    this.labelText,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.hintText,
    this.prefixIcon,

    this.keyboardType,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          CustomText(text: labelText.toString(), style: kFormTextStyle),
          SizedBox(height: 10.h,),
          Container(
            height: 55.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,

              border: Border.all(color: AppColors.allColor),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: TextFormField(

                controller: controller,
                style: style,
                validator: validator,
                keyboardType: keyboardType,
                decoration: InputDecoration(

                    suffixIcon: suffixIcon,
                    prefixIcon: prefixIcon,
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                    border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
