
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/Views/CvCreate/cv_create.dart';
import 'package:profilio/Views/EducationDetails/education_details.dart';
import 'package:profilio/Views/UploadData/component/details.dart';
import 'package:profilio/Views/UploadDecument/components/container1.dart';
import 'package:profilio/Views/home/component/header.dart';
import 'package:profilio/Views/workExperience/work_experience.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_images.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/Custom_textform_field.dart';
import 'package:profilio/widgets/custom_button.dart';
import 'package:profilio/widgets/custom_text.dart';
import 'package:profilio/widgets/rounded_button.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../bottomNav.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  bool checkBox=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.personalBack),
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
                  currentStep: 1,
                  size: 6,

                  selectedColor: Colors.blue,
                  unselectedColor: Colors.grey,
                ),
              ),
              SizedBox(height: 30.h,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0).r,
                child: CustomText(text: "Personal Details", style: kFirstTextStyle),
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColors.greyColor),
                      borderRadius: BorderRadius.circular(10).w,
                    ),
                    child: Image.asset(AppImages.imageIcon)
                  ),
                ],
              ),
             SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "Professional Title",
                hintText: "Professional Title",
              ),
              SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "First Name",
                hintText: "First Name",
              ),
              SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "Last Name",
                hintText: "Last Name",
              ),
              SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "Email",
                hintText: "Email",
              ),
              SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "Phone Number",
                hintText: "Phone Number",
              ),
              SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "Address",
                hintText: "Address",
              ),
              SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "Postal/Zip Code",
                hintText: "Postal/Zip Code",
              ),
              SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "City",
                hintText: "City",
              ),
              SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "Nationality",
                hintText: "Nationality",
              ),
              SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "Driver's License",
                hintText: "Driver's License",
              ),
              SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "Nationality",
                hintText: "Nationality",
              ),
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
                    text: "Skip", onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WorkExperience(),));
                }),
                SizedBox(width: 15.w,),
                RoundedButton(
                  color: Colors.blue,
                    textColor: Colors.white,
                    text: "Next", onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>EducationDetails(),));
                }),

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
