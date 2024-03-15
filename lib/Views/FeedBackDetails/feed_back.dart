
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/Views/AnotherDetails/another_details.dart';
import 'package:profilio/utils/app_images.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/AddMore.dart';
import 'package:profilio/widgets/Custom_textform_field.dart';
import 'package:profilio/widgets/custom_text.dart';
import 'package:profilio/widgets/header.dart';
import 'package:profilio/widgets/rounded_button.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../../widgets/step_progress.dart';
import '../bottomNav.dart';


class FeedBack extends StatefulWidget {
  const FeedBack({super.key});

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {

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
            header(),
            SizedBox(height: 20.h,),
            StepProgress(
              currentStep: 9,
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0).r,
              child: CustomText(text: "Reference/Feedback Details", style: kFirstTextStyle),
            ),
            SizedBox(height: 20.h,),
            Expanded(
              child: ListView(
              
                
                children: [
                
              
              
                  CustomTextFormField(
                    labelText: "Client Name",
                    hintText: "Client Name",
                  ),
                  SizedBox(height: 15.h,),
                  CustomTextFormField(
                    labelText: "Client Email",
                    hintText: "Client Email",
                  ),
                  SizedBox(height: 15.h,),
                  CustomTextFormField(
                    labelText: "Project Name",
                    hintText: "Project Name",
                  ),
              
              
                  SizedBox(height: 15.h,),
                  CustomTextFormField(
                    labelText: "Request Date",
                    hintText: "Request Date",
                  ),
                  SizedBox(height: 15.h,),
                  CustomTextFormField(
                    labelText: "Expiring Link Date",
                    hintText: "Link Here",
                  ),
              
                  SizedBox(height: 15.h,),
              
              
                  AddMore(text: "Add More"),
              
                  SizedBox(height: 30.h,),
                  RoundedButton(skipTap: (){}, nextTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AnotherDetails(),));
              
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
