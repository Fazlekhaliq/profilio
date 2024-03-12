
import 'package:flutter/material.dart';

import '../utils/app_text.dart';
import 'custom_text.dart';

class AddMore extends StatelessWidget {
  String text;
   AddMore({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Row(children: [
        Icon(Icons.add),
        CustomText(text: text, style: kFormTextStyle.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 16
        ))
      ],),
    );
  }
}
