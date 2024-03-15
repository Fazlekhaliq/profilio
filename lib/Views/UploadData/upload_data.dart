
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/Views/PersonalDetails/personal_details.dart';
import 'package:profilio/Views/UploadData/component/details.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_images.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/custom_button.dart';
import 'package:profilio/widgets/custom_text.dart';
import 'package:profilio/widgets/header.dart';

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
        child: Column(
          children: [
            SizedBox(height: 50.h,),
            const header(),
            const SizedBox(height: 20,),
            DottedBorder(

              color: Colors.black,
              padding: const EdgeInsets.all(2),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: Column(
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
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PersonalDetails(),));
                    },
                      child: const DetailsList(text: "Personal Details")),
                  SizedBox(height: 20.h,),
                  const DetailsList(text: "Education"),
                  SizedBox(height: 20.h,),
                  const DetailsList(text: "Work experience"),
                  SizedBox(height: 20.h,),
                  const DetailsList(text: "Projects/Portfolio"),
                  SizedBox(height: 20.h,),
                  const DetailsList(text: "Diplomas / Certificates"),
                  SizedBox(height: 20.h,),
                  const DetailsList(text: "Skills"),
                  SizedBox(height: 20.h,),
                  const DetailsList(text: "Social Media"),
                  SizedBox(height: 20.h,),
                  const DetailsList(text: "Personal Details"),
                  SizedBox(height: 20.h,),
                  const DetailsList(text: "Other"),
              
              
              
              
                  SizedBox(height: 30.h,),
                  CustomButton(text: "Generate", onTap: (){
              
                  }),
                  SizedBox(height: 30.h,),
              
              
              
                ],
              ),
            ),
          ],
        ),

      ),
      bottomNavigationBar:  const MenuNavigationBar(),
    );
  }
}
