

import 'package:flutter/material.dart';


class SimpleButtonWidget extends StatelessWidget {
  final VoidCallback ontap;
  final String text;
  // final String fontfamily;
  final Color textColor;
  final double textSize;
  final FontWeight fontWeight;
  SimpleButtonWidget({super.key,required this.ontap,required this.text,
     this.textColor=Colors.black,this.textSize=17,
    this.fontWeight=FontWeight.w400});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: ontap, child: Text(text,
      style: TextStyle(color: textColor,fontSize: textSize,
          fontWeight:fontWeight ),));
  }
}
