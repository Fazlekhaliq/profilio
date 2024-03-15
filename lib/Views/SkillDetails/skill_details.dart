
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/Views/MediaDetails/media_details.dart';
import 'package:profilio/utils/app_images.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/AddMore.dart';
import 'package:profilio/widgets/Custom_textform_field.dart';
import 'package:profilio/widgets/custom_text.dart';
import 'package:profilio/widgets/description.dart';
import 'package:profilio/widgets/rounded_button.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../widgets/header.dart';
import '../../widgets/step_progress.dart';
import '../bottomNav.dart';

class SkillDetails extends StatefulWidget {
  const SkillDetails({super.key});

  @override
  State<SkillDetails> createState() => _SkillDetailsState();
}

class _SkillDetailsState extends State<SkillDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.skillBackground),
              fit: BoxFit.cover,
            )
        ),
        child: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h,),
              header(),
              SizedBox(height: 20.h,),
              StepProgress(
                currentStep: 6,
              ),
              SizedBox(height: 30.h,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0).r,
                child: CustomText(text: "Skills Details", style: kFirstTextStyle),
              ),
              SizedBox(height: 20.h,),

              CustomTextFormField(
                labelText: "Skills",
                hintText: "Skills",
              ),
              SizedBox(height: 15.h,),
              DescriptionWidget(),
              SizedBox(height: 15.h,),
              AddMore(text: "Add Skills"),
              SizedBox(height: 30.h,),
              RoundedButton(skipTap: (){}, nextTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MediaDetails(),));

              }),
              SizedBox(height: 50.h,),






            ],
          ),
        ),

      ),
      bottomNavigationBar:  MenuNavigationBar(),
    );
  }
}
