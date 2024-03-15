
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/Views/UploadDecument/upload_decument.dart';
import 'package:profilio/Views/home/component/header.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_images.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/custom_button.dart';
import 'package:profilio/widgets/mytextformfield.dart';
import 'package:profilio/widgets/custom_text.dart';

import '../bottomNav.dart';

class CvCreateScreen extends StatefulWidget {
  const CvCreateScreen({super.key});

  @override
  State<CvCreateScreen> createState() => _CvCreateScreenState();
}

class _CvCreateScreenState extends State<CvCreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.cvBack),
              fit: BoxFit.cover,
            )
        ),
        child: SingleChildScrollView(
          child: Column(
          
          
            children: [
              SizedBox(height: 50.h,),
             Row(
               children: [
                 IconButton(onPressed: (){
                   Navigator.pop(context);
                 }, icon: Icon(Icons.arrow_back)),
               ],
             ),
            Image.asset(AppImages.logoImage,height: 228.h,width: 228.w,),
          
              SizedBox(height: 30.h,),
              CustomText(text: "Create your profile", style: kFirstTextStyle),
              SizedBox(height: 30.h,),
              MyTextFormField(
                prefixIcon: Image.asset(AppImages.circleIcon,),
                hintText: "Profile Name",
          
              ),
              SizedBox(height: 50.h,),
              CustomButton(text: "create", onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => UploadDecument(),));
          
              }),
          
            
          
            ],
          ),
        ),

      ),
      bottomNavigationBar:   MenuNavigationBar(),
    );
  }
}
