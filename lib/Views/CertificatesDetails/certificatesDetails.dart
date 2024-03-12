
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/Views/CvCreate/cv_create.dart';
import 'package:profilio/Views/EducationDetails/education_details.dart';
import 'package:profilio/Views/SkillDetails/skill_details.dart';
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
import 'package:profilio/widgets/description.dart';
import 'package:profilio/widgets/rounded_button.dart';
import 'package:profilio/widgets/upload_widget.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../../widgets/from_to_continus.dart';

import '../../widgets/header.dart';
import '../bottomNav.dart';


class CertificatesDetails extends StatefulWidget {
  const CertificatesDetails({super.key});

  @override
  State<CertificatesDetails> createState() => _CertificatesDetailsState();
}

class _CertificatesDetailsState extends State<CertificatesDetails> {

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
              header(),
              SizedBox(height: 20.h,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: StepProgressIndicator(
                  totalSteps: 10,
                  currentStep: 5,
                  size: 6,

                  selectedColor: Colors.blue,
                  unselectedColor: Colors.grey,
                ),
              ),
              SizedBox(height: 30.h,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0).r,
                child: CustomText(text: "Certification/Diploma Details", style: kFirstTextStyle),
              ),
              SizedBox(height: 20.h,),


              CustomTextFormField(
                labelText: "Certification/Diploma Name",
                hintText: "Certification/Diploma Name",
              ),
              SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "Organization/Institution",
                hintText: "Organization/Institution",
              ),
              SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "Date of Completion/Award",
                hintText: "Date of Completion/Award",
              ),


              SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "Certification/Diploma Number",
                hintText: "Certification/Diploma Number",
              ),
              SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "Expiration Date",
                hintText: "MM\DD\YYYY",
              ),
              SizedBox(height: 15.h,),
              CustomTextFormField(
                labelText: "Certification/Diploma Number",
                hintText: "Number",
              ),
              SizedBox(height: 15.h,),
              UploadWidget(text: "Upload Document"),
              SizedBox(height: 15.h,),


              AddMore(text: "Add More"),

              SizedBox(height: 30.h,),
              RoundedButton(skipTap: (){}, nextTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SkillDetails(),));

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
