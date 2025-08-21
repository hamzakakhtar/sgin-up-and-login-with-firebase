import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color textColor;
  // final String textFont;
  final TextAlign? textAignment;
  final double textScaleFactor;

  TextWidget({super.key,required this.text,this.fontSize=26.5,this.fontWeight,this.textColor=Colors.black,
    this.textAignment,this.textScaleFactor=1});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: fontSize,fontWeight:fontWeight,color: textColor,
    ),textAlign: textAignment,textScaleFactor: textScaleFactor,);
  }
}
