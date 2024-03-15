
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/Views/CvCreate/cv_create.dart';
import 'package:profilio/widgets/description.dart';
import 'package:profilio/Views/UploadData/component/details.dart';
import 'package:profilio/Views/UploadDecument/components/container1.dart';
import 'package:profilio/Views/home/component/header.dart';
import 'package:profilio/Views/workExperience/work_experience.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_images.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/AddMore.dart';
import 'package:profilio/widgets/Custom_textform_field.dart';
import 'package:profilio/widgets/custom_button.dart';
import 'package:profilio/widgets/custom_text.dart';
import 'package:profilio/widgets/rounded_button.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../widgets/header.dart';
import '../../widgets/step_progress.dart';
import '../bottomNav.dart';
import '../../widgets/from_to_continus.dart';

class EducationDetails extends StatefulWidget {
  const EducationDetails({super.key});

  @override
  State<EducationDetails> createState() => _EducationDetailsState();
}

class _EducationDetailsState extends State<EducationDetails> {

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h,),
            header(),
            SizedBox(height: 20.h,),
            StepProgress(
              currentStep: 2,
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0).r,
              child: CustomText(text: "Education Details", style: kFirstTextStyle),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
              
               // crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  CustomTextFormField(
                    labelText: "Education Details",
                    hintText: "Education Details",
                  ),
                  SizedBox(height: 15.h,),
                  CustomTextFormField(
                    labelText: "School",
                    hintText: "School",
                  ),
                  SizedBox(height: 15.h,),
                  FromToContinue(),
                  SizedBox(height: 30.h,),
                  DescriptionWidget(),
                  SizedBox(height: 15.h,),
                  AddMore(text: "Add Education"),
                  SizedBox(height: 30.h,),
                  RoundedButton(skipTap: (){}, nextTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WorkExperience(),));
              
                  }),
                  SizedBox(height: 50.h,),
              
              
              
              
              
              
                ],
              ),
            ),
          ],
        ),

      ),
      bottomNavigationBar:  MenuNavigationBar(),
    );
  }
}
