import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Widgets/custom_button.dart';

import '../../utils/app_text.dart';
import '../../widgets/Custom_text.dart';
class ShareScreen extends StatefulWidget {
  const ShareScreen({super.key});

  @override
  State<ShareScreen> createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  int itemCount2=3;
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  width: 392.w,
                  height: 513.h,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: Column(

                      children: [
                        SizedBox(height: 7.h,),
                        Container(
                          width: 99.w,
                          height: 7.h,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(12).w,

                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 8.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(text: "Save Salmon to List",style: kFirstTextStyle,),
                              Container(
                                height: 34.h,
                                width: 114.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Color(0xffF7F7F7),

                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.add,),
                                    CustomText(text: "Create List",style: kFirstTextStyle.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                    ),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 8.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(text: "List Name",style: kFirstTextStyle,),
                                  Row(
                                    children: [

                                      IconButton(onPressed: (){
                                        setState(() {

                                        });
                                      }, icon: Icon(Icons.keyboard_arrow_down_outlined))
                                    ],
                                  )
                                ],
                              ),
                              Checkbox(


                                  value: isChecked, onChanged: (bool? value){
                                setState(() {
                                  isChecked=value!;
                                });

                              })
                            ],
                          ),
                        ),
                        Container(
                          height: 123.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10).w,


                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CustomText(text: "List Name",style: kFirstTextStyle.copyWith(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,

                                        ),),
                                        Row(
                                          children: [
                                            CustomText(text: "4 items",style: kSecondTextStyle.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.sp,
                                            ),),
                                            IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_outlined))
                                          ],
                                        ),
                                        CustomText(text: "Orange leaves, chicken, tempeh, sambal,\n singkong, eggs, crackers.",style: kSecondTextStyle.copyWith(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400,

                                        ),)
                                      ],
                                    ),
                                    Checkbox(


                                        value: isChecked, onChanged: (bool? value){
                                      setState(() {
                                        isChecked=value!;
                                      });

                                    })
                                  ],
                                ),
                              )
                            ],
                          ),

                        ),
                        SizedBox(height: 10.h,),


                        SizedBox(height: 20.h,),
                        Padding(padding:  EdgeInsets.symmetric(horizontal: 8.w),
                          child:  CustomButton(text: "Save List", onTap: (){

                          }),)




                      ],
                    ),
                  ),
                );
              },
            );

          },


      ),


    );
  }
}