import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_images.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/custom_text.dart';

class UploadWidget extends StatelessWidget {
  final String text;
  void Function()? onTap;
   UploadWidget({super.key, required this.text,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: text, style: kFormTextStyle),
          SizedBox(height: 10.h,),
          InkWell(
            onTap: onTap,
            child: Container(
              width: double.infinity,
              height: 93.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10).w,
                border: Border.all(color: AppColors.allSide.withOpacity(0.48))


              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.importIcon),
                  SizedBox(height: 5.h,),
                  CustomText(text: "Upload here", style: kSecondTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ))
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
