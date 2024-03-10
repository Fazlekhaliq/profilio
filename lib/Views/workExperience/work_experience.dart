
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/Views/CvCreate/cv_create.dart';
import 'package:profilio/Views/UploadData/component/details.dart';
import 'package:profilio/Views/UploadDecument/components/container1.dart';
import 'package:profilio/Views/home/component/header.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_images.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/Custom_textform_field.dart';
import 'package:profilio/widgets/custom_button.dart';
import 'package:profilio/widgets/custom_text.dart';
import 'package:profilio/widgets/rounded_button.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../bottomNav.dart';

class WorkExperience extends StatefulWidget {
  const WorkExperience({super.key});

  @override
  State<WorkExperience> createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.educationBackground),
              fit: BoxFit.cover,
            )
        ),
        child: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h,),
              Padding(
                padding: const EdgeInsets.only(right: 16.0,top: 20).r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,size: 24,color: AppColors.black,)),
                    ),
                    SizedBox(width: 15.w,),


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
              ),
              SizedBox(height: 20.h,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: StepProgressIndicator(
                  totalSteps: 10,
                  currentStep: 3,
                  size: 6,

                  selectedColor: Colors.blue,
                  unselectedColor: Colors.grey,
                ),
              ),
              SizedBox(height: 30.h,),


              SizedBox(height: 15.h,),


              SizedBox(height: 15.h,),


              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(children: [
                  Icon(Icons.add),
                  CustomText(text: "Add More", style: kFormTextStyle)
                ],),
              ),
              SizedBox(height: 30.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedButton(
                      border: Border.all(color: AppColors.greyColor),
                      color: Colors.white,
                      text: "Skip", onTap: (){}),
                  SizedBox(width: 15.w,),
                  RoundedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      text: "Next", onTap: (){}),

                ],),
              SizedBox(height: 50.h,),






            ],
          ),
        ),

      ),
      bottomNavigationBar:  MenuNavigationBar(),
    );
  }
}
