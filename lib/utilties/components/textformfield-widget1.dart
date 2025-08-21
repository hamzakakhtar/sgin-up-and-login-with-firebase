import 'package:flutter/material.dart';


class TextfieldWidget1 extends StatelessWidget {
  final Color textformfieldColor;
  final String hinttext;
  final Color hinttextColor;
  final double symmetrice;
  final TextEditingController? controller;
  final Icon? prefixIcon;
  final Icon suffixIcon;
  // final Widget? child;
  final BorderRadius? borderRadius;
  final VoidCallback onPressed;
  final bool obscure;

  TextfieldWidget1({super.key,
    this.textformfieldColor=Colors.grey,this.hinttext='123445667',this.hinttextColor=Colors.black12,
    this.controller,this.symmetrice=10,this.prefixIcon,this.borderRadius,
  required this.suffixIcon,required this.onPressed,required this.obscure});

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: textformfieldColor,
        ),

        margin: EdgeInsets.symmetric(horizontal: symmetrice),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextFormField(
            obscureText: obscure,
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              border: InputBorder.none,
              hintText: hinttext,
              hintStyle: TextStyle(color: hinttextColor,),
              suffixIcon: IconButton(onPressed: onPressed, icon: suffixIcon),
            ),
          ),
        ));
  }
}
