import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_text.dart';
import '../../../widgets/custom_text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 35.0).r,
            child: IconButton(onPressed: (){}, icon: Icon(Icons.menu,size: 24,color: AppColors.black,)),
          ),
          SizedBox(width: 15.w,),
          CustomText(text: "Profile Creater", style: kFirstTextStyle),

          SizedBox(width: 50.w,),
          Column(
            children: [
              Image.asset(AppImages.profile,height: 40,width: 40,),
              SizedBox(height: 4.h,),

              CustomText(text: "Saima Gill", style: kFirstTextStyle.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ))
            ],
          )
        ],
      ),
    );
  }
}
