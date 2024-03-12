
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/Views/UploadData/upload_data.dart';
import 'package:profilio/Views/UploadDecument/components/container1.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_images.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/custom_button.dart';
import 'package:profilio/widgets/custom_text.dart';

import '../bottomNav.dart';

class UploadDecument extends StatefulWidget {
  const UploadDecument({super.key});

  @override
  State<UploadDecument> createState() => _UploadDecumentState();
}

class _UploadDecumentState extends State<UploadDecument> {
  bool checkBox=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.backGround),
              fit: BoxFit.cover,
            )
        ),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 30.h,),
        Container1(text: "Import existing file"),
            SizedBox(height: 20.h,),
            Container1(text: "Import from linkedin"),
            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0).r,
              child: Row(
                children: [
                  Checkbox(value: checkBox, onChanged: (bool? newValue){
                    newValue=checkBox;
                    setState(() {

                    });

                  }),
                  CustomText(text: "Edited another information", style: kSecondTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ))

                ],
              ),
            ),
            SizedBox(height: 30.h,),
            CustomButton(text: "Generate", onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => UploadData(),));

            }),
            Spacer(),
            MenuNavigationBar(),

          ],
        ),

      ),
    );
  }
}
