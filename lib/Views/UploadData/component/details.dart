import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/custom_text.dart';

class DetailsList extends StatelessWidget {
  final String text;
  const DetailsList({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text: text, style: kFirstTextStyle.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
            color: AppColors.greyColor,
          )),
          Icon(Icons.arrow_forward_ios_outlined,color: AppColors.greyColor,size: 24,)
        ],
      ),
    );
  }
}
