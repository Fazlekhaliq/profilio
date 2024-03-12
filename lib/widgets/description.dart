// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/custom_text.dart';

class DescriptionWidget extends StatelessWidget {

  TextEditingController? controller;
  String? Function(String?)? validator;



  TextInputType? keyboardType;
  TextStyle? style;
  Widget? suffixIcon;
  Widget? prefixIcon;

  DescriptionWidget({
    super.key,

    this.suffixIcon,
    this.controller,
    this.validator,

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
          CustomText(text: "Description", style: kFormTextStyle),
          SizedBox(height: 10.h,),
          Container(
            height: 93.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,

              border: Border.all(color: AppColors.allSide),
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
                    hintText: "Description",
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
