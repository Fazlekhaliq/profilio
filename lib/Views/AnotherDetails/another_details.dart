
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/Views/FeedBackDetails/feed_back.dart';
import 'package:profilio/utils/app_color.dart';
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
class AnotherDetails extends StatefulWidget {
  const AnotherDetails({super.key});

  @override
  State<AnotherDetails> createState() => _AnotherDetailsState();
}

class _AnotherDetailsState extends State<AnotherDetails> {

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
                currentStep: 10,
              ),
              SizedBox(height: 30.h,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0).r,
                child: CustomText(text: "Another Details", style: kFirstTextStyle),
              ),
              SizedBox(height: 20.h,),

              CustomTextFormField(
                labelText: "Other",
                hintText: "Other",
              ),
              SizedBox(height: 15.h,),



              AddMore(text: "Add More "),
              SizedBox(height: 50.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){

                    },
                    child: Container(

                      height: 45.h,
                      width: 155.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.roundColor.withOpacity(0.48),width: 3),
                        borderRadius: BorderRadius.circular(30).w,
                        color: Colors.white,
                      ),
                      child: Center(child: CustomText(text:"Skip",style: kFormTextStyle.copyWith(

                      ),)),
                    ),
                  ),
                  SizedBox(width: 15.w,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 45.h,
                      width: 155.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.roundColor.withOpacity(0.48),width: 3),
                        borderRadius: BorderRadius.circular(30).w,
                        color: Colors.blue,
                      ),
                      child: Center(child: CustomText(text: "Generate",style: kFormTextStyle.copyWith(
                          color: Colors.white
                      ),)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.h,),




            ],
          ),
        ),

      ),
      bottomNavigationBar:  MenuNavigationBar(),
    );
  }
}
