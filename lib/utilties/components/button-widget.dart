

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final double buttonHeight;
  final double buttonWidth;
  final Color buttonColor;
  final double buttonRadius;
  final VoidCallback ontap;
  final String text;
  // final String fontFamily;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;

  ButtonWidget({super.key,
    this.buttonHeight=52,this.buttonWidth=300,this.buttonColor=Colors.black,this.buttonRadius=6,
    required this.ontap,required this.text,this.textColor=Colors.lime,
    this.fontWeight=FontWeight.w600,this.fontSize=16,});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: buttonHeight,
      width: buttonWidth,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(buttonRadius),

      ),
      child: TextButton(

        onPressed: ontap,
        child: Text(text,style: TextStyle(color: textColor,
            fontWeight: fontWeight,fontSize: fontSize),),),
    );
  }
}
