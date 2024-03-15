import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/Provider/dropdwon_provder.dart';
import 'package:profilio/Views/FeedBackDetails/feed_back.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_images.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/AddMore.dart';
import 'package:profilio/widgets/Custom_textform_field.dart';
import 'package:profilio/widgets/custom_text.dart';
import 'package:profilio/widgets/header.dart';
import 'package:profilio/widgets/rounded_button.dart';
import 'package:provider/provider.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../../widgets/step_progress.dart';
import '../bottomNav.dart';

class LanguageDetails extends StatefulWidget {
  const LanguageDetails({Key? key}) : super(key: key);

  @override
  State<LanguageDetails> createState() => _LanguageDetailsState();
}

class _LanguageDetailsState extends State<LanguageDetails> {

  final List<String> _levels = ['Beginner', 'Conversational', 'Fluent','Native'];

  @override
  Widget build(BuildContext context) {
    print("language");
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.skillBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h,),
              header(),
              SizedBox(height: 20.h,),
              StepProgress(
                currentStep: 8,
              ),
              SizedBox(height: 30.h,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
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
                    child: Row(
                      children: [
                        Consumer<DropDownProvider>(
                          builder: (context, value, child) {
                            return Expanded(
                              child: PopupMenuButton<String>(
                                color: Colors.white,
                                initialValue: value.selectedLevel,
                                onSelected: (String level) {
                                  value.updateSelectedLevel(level);

                                },
                                itemBuilder: (BuildContext context) {
                                  return _levels.map((String level) {
                                    return PopupMenuItem<String>(
                                      value: level,
                                      child: Text(level,style: kSecondTextStyle.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black
                                      ),),
                                    );
                                  }).toList();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(value.selectedLevel),
                                      Icon(Icons.keyboard_arrow_down),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
              AddMore(text: "Add More Social Media"),
              SizedBox(height: 50.h,),
              RoundedButton(
                skipTap: (){},
                nextTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FeedBack(),));
                },
              ),
              SizedBox(height: 50.h,),
            ],
          ),
        ),
      ),
      bottomNavigationBar:  const MenuNavigationBar(),
    );
  }
}
