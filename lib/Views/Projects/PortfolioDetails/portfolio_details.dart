
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/Views/CertificatesDetails/certificatesDetails.dart';
import 'package:profilio/utils/app_images.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/AddMore.dart';
import 'package:profilio/widgets/Custom_textform_field.dart';
import 'package:profilio/widgets/custom_text.dart';
import 'package:profilio/widgets/description.dart';
import 'package:profilio/widgets/rounded_button.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../../widgets/from_to_continus.dart';
import '../../../widgets/header.dart';
import '../../../widgets/step_progress.dart';
import '../../bottomNav.dart';


class PortfolioDetails extends StatefulWidget {
  const PortfolioDetails({super.key});

  @override
  State<PortfolioDetails> createState() => _PortfolioDetailsState();
}

class _PortfolioDetailsState extends State<PortfolioDetails> {

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
              currentStep: 4,
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0).r,
              child: CustomText(text: "Projects/Portfolio Details", style: kFirstTextStyle),
            ),
            Expanded(
              child: ListView(
              
               // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
              
              
                  CustomTextFormField(
                    labelText: "Project Title",
                    hintText: "Project Title",
                  ),
                  SizedBox(height: 15.h,),
                  CustomTextFormField(
                    labelText: "Role",
                    hintText: "Role",
                  ),
                  SizedBox(height: 15.h,),
                  CustomTextFormField(
                    labelText: "Project Duration",
                    hintText: "Project Duration",
                  ),
                  SizedBox(height: 15.h,),
                  FromToContinue(),
                  SizedBox(height: 15.h,),
                  CustomTextFormField(
                    labelText: "Technologies Used",
                    hintText: "Technologies Used",
                  ),
                  SizedBox(height: 15.h,),
                  CustomTextFormField(
                    labelText: "Team Size",
                    hintText: "Team Size",
                  ),
                  SizedBox(height: 15.h,),
                  CustomTextFormField(
                    labelText: "Projects/Portfolio",
                    hintText: "Projects/Portfolio",
                  ),
                  SizedBox(height: 15.h,),
                  CustomTextFormField(
                    labelText: "Client/Stakeholder Feedback",
                    hintText: "Client/Stakeholder Feedback",
                  ),
                  SizedBox(height: 15.h,),
                  DescriptionWidget(),
                  SizedBox(height: 15.h,),
              
              
                  AddMore(text: "Add More"),
              
                  SizedBox(height: 30.h,),
                 RoundedButton(skipTap: (){}, nextTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CertificatesDetails(),));
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
