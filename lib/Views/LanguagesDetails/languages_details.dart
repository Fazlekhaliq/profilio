
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
import '../bottomNav.dart';
class LanguageDetails extends StatefulWidget {
  const LanguageDetails({super.key});

  @override
  State<LanguageDetails> createState() => _LanguageDetailsState();
}

class _LanguageDetailsState extends State<LanguageDetails> {

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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: StepProgressIndicator(
                  totalSteps: 10,
                  currentStep: 8,
                  size: 6,

                  selectedColor: Colors.blue,
                  unselectedColor: Colors.grey,
                ),
              ),
              SizedBox(height: 30.h,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0).r,
                child: CustomText(text: "Languages Details", style: kFirstTextStyle),
              ),
              SizedBox(height: 20.h,),

              CustomTextFormField(
                labelText: "Languages",
                hintText: "Languages",
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  height: 55.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,

                    border: Border.all(color: AppColors.allSide),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: TextFormField(



                      decoration: InputDecoration(



                          suffixIcon: IconButton(onPressed: () {  }, icon:
                            Icon(Icons.keyboard_arrow_down),),
                          hintText: "Level",
                          hintStyle: TextStyle(
                            color: AppColors.greyColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h,),

              AddMore(text: "Add More Social Media"),
              SizedBox(height: 50.h,),
              RoundedButton(skipTap: (){}, nextTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => FeedBack(),));

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
