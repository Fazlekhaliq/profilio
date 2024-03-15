
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:profilio/Views/EducationDetails/education_details.dart';
import 'package:profilio/Views/workExperience/work_experience.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_images.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/AddMore.dart';
import 'package:profilio/widgets/Custom_textform_field.dart';
import 'package:profilio/widgets/custom_progress.dart';
import 'package:profilio/widgets/custom_text.dart';
import 'package:profilio/widgets/rounded_button.dart';
import 'package:profilio/widgets/step_progress.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../widgets/header.dart';
import '../bottomNav.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  File? _image ;
  final picker = ImagePicker();
  Future getImageGallery()async{
    final pickedFile = await picker.pickImage(source: ImageSource.gallery , imageQuality: 80);
    setState(() {
      if(pickedFile != null){
        _image = File(pickedFile.path);
      }else {
        print('no image picked');
      }
    });

  }

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h,),
            const header(),
            SizedBox(height: 20.h,),
            StepProgress(
              currentStep: 1,
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0).r,
              child: CustomText(text: "Personal Details", style: kFirstTextStyle),
            ),

            Expanded(
              child: ListView(shrinkWrap: true,

                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [



                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          getImageGallery();

                        },
                        child: Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: AppColors.greyColor),
                            borderRadius: BorderRadius.circular(10).w,
                          ),
                          child: Image.asset(AppImages.imageIcon)
                        ),
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
                 AddMore(text: "Add More"),
                  SizedBox(height: 30.h,),
                  RoundedButton(skipTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WorkExperience(),));
                  }, nextTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const EducationDetails(),));
                  }),
                  SizedBox(height: 50.h,),
                ],
              ),
            ),
          ],
        ),

      ),
      bottomNavigationBar:  const MenuNavigationBar(),

    );
  }
}
