
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/Views/PersonalDetails/personal_details.dart';
import 'package:profilio/Views/UploadData/component/details.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_images.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/custom_button.dart';
import 'package:profilio/widgets/custom_text.dart';

import '../bottomNav.dart';

class UploadData extends StatefulWidget {
  const UploadData({super.key});

  @override
  State<UploadData> createState() => _UploadDataState();
}

class _UploadDataState extends State<UploadData> {
  bool checkBox=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
          height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.uploadBack),
              fit: BoxFit.cover,
            )
        ),
        child: SingleChildScrollView(
          child: Column(
          
          
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
              SizedBox(height: 20,),
              DottedBorder(
          
                color: Colors.black,
              padding: EdgeInsets.all(2),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.white,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.importIcon),
                      SizedBox(height: 7.h,),
                      CustomText(text: "Drag & Drop", style: kSecondTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                      ))
          
                    ],
                  ),
                ),
          
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalDetails(),));
                },
                  child: DetailsList(text: "Personal Details")),
              SizedBox(height: 20,),
              DetailsList(text: "Education"),
              SizedBox(height: 20,),
              DetailsList(text: "Work experience"),
              SizedBox(height: 20,),
              DetailsList(text: "Projects/Portfolio"),
              SizedBox(height: 20,),
              DetailsList(text: "Diplomas / Certificates"),
              SizedBox(height: 20,),
              DetailsList(text: "Skills"),
              SizedBox(height: 20,),
              DetailsList(text: "Social Media"),
              SizedBox(height: 20,),
              DetailsList(text: "Personal Details"),
              SizedBox(height: 20,),
              DetailsList(text: "Other"),
          
          
          
          
              SizedBox(height: 30.h,),
              CustomButton(text: "Generate", onTap: (){
          
              }),
              SizedBox(height: 30.h,),



            ],
          ),
        ),

      ),
      bottomNavigationBar:  MenuNavigationBar(),
    );
  }
}
