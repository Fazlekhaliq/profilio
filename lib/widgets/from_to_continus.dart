import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profilio/utils/app_color.dart';
import 'package:profilio/utils/app_text.dart';
import 'package:profilio/widgets/custom_text.dart';
import 'package:table_calendar/table_calendar.dart';
class FromToContinue extends StatelessWidget {
  TextEditingController? controller;
  String? Function(String?)? validator;
  TextStyle? style;
  FromToContinue({
    Key? key,
    this.controller,
    this.validator,
    this.style,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildTextFormField(
            labelText: "From",
            hintText: "From",
            onTap: () {
              _selectDate(context);
            },
          ),
          buildTextFormField(
            labelText: "To",
            hintText: "To",
          ),
          buildTextFormField(labelText: "Continue", hintText: "Continue"),
        ],
      ),
    );
  }
  Widget buildTextFormField(
      {required String labelText, required String hintText, Function()? onTap}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: labelText, style: kFormTextStyle),
        SizedBox(height: 10.h),
        Container(
          height: 55.h,
          width: 98.w,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.allSide),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: TextFormField(
              controller: controller,
              style: style,
              validator: validator,
              keyboardType: TextInputType.datetime,
              onTap: onTap as void Function()? ?? () {},
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  color: AppColors.greyColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
  // Future<void> _selectDate(BuildContext context) async {
  //   await showDatePicker(
  //     cancelText: " ",
  //     helpText: "",
  //     confirmText: " ",
  //
  //     context: context,
  //     //initialDate: DateTime.now(),
  //     firstDate: DateTime(2000),
  //     lastDate: DateTime(2101),
  //   );
  // }
  Future<void> _selectDate(BuildContext context) async {
    DateTime? selectedDate;
    selectedDate = await showDialog<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            height: 360.h,
            child: TableCalendar(

              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),

              headerVisible: false,

          )),
        );

      },
    );

    if (selectedDate != null) {
      // Do something with the selected date if needed
      print('Selected date: $selectedDate');
    }
  }

}
