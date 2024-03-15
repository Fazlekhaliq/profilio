import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_color.dart';
import '../utils/app_images.dart';
import '../utils/app_text.dart';
import 'custom_text.dart';

class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0,top: 20).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back,size: 24,color: AppColors.black,)),
          ),

          Column(
            children: [
              Image.asset(AppImages.profile,height: 40,width: 40,),
              SizedBox(height: 4.h,),

              CustomText(text: "Saima Gill", style: kFirstTextStyle.copyWith(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto-Regular",
                fontSize: 12,
              ))
            ],
          )
        ],
      ),
    );
  }
}
