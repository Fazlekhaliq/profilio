
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/Views/CvCreate/cv_create.dart';
import 'package:profilio/Views/home/component/header.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_images.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/custom_text.dart';

import '../bottomNav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.backGround),
            fit: BoxFit.cover,
          )
        ),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h,),
            Header(),

            SizedBox(height: 30.h,),
            Container(
              height: 109.h,
              width: double.infinity,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Container(
                      height: 109.h,
                      width: 325.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15).w,
                        color: AppColors.boxColor.withOpacity(0.20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 40.0).r,
                        child: Center(
                          child: CustomText(text: 'Craft your digital identity with\nease, with exclusive access, yet\nshareable at your discretion.', style: kFirstTextStyle.copyWith(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
                      ),

                    ),
                  ),
                  Positioned(
                    right: 13,
                      top: 10,
                      child: Image.asset(AppImages.cvImages,height: 77.h,width: 77.w,))
                ],
              ),
            ),
            SizedBox(height: 70.h,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0).r,
              child: Container(
                height: 175.h,
                width: 135.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10).w,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.shadowColor.withOpacity(0.10),
                      offset:Offset(2, 0),
                      blurRadius: 10,
                      spreadRadius: 0
                      
                    )
                  ]

                ),
                child: Center(
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(text: "Create new", style: kSecondTextStyle),
                      CustomText(text: " profile", style: kSecondTextStyle),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CvCreateScreen(),));
                      }, icon: Icon(Icons.add,size: 24,color: AppColors.greyColor,))
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            MenuNavigationBar(),

          ],
        ),

      ),
    );
  }
}
