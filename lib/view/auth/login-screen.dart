import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgin_up/utilties/components/button-widget.dart';
import 'package:sgin_up/utilties/components/simple-button-widget.dart';
import 'package:sgin_up/utilties/components/text-widget.dart';
import 'package:sgin_up/utilties/components/textformfield-widget.dart';
import 'package:sgin_up/utilties/components/textformfield-widget1.dart';

import '../home.dart';
import 'sgin-up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _SginUpState();
}

class _SginUpState extends State<LoginScreen> {
  TextEditingController emailConroller=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController passwordController1=TextEditingController();
  bool isShow=true;
  bool isShow1=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body:SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 200,),

            TextWidget(text: 'Hamza!',textColor: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,),
            SizedBox(height: 100,),
            TextfieldWidget(
              hinttext: 'Email or phone number',
              hinttextColor: Colors.grey,
              textformfieldColor: Colors.white,
              symmetrice: 30,
              controller: emailConroller,

            ),
            SizedBox(height: 10,),

            TextfieldWidget1(
              controller: passwordController,
              hinttext: 'Password',
              hinttextColor: Colors.grey,
              textformfieldColor: Colors.white,
              symmetrice: 30,
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              obscure: isShow,
              onPressed: (){
                if(isShow==false)
                {
                  isShow=true;
                }
                else
                {
                  isShow=false;
                }
                setState(() {

                });
              },
            ),

            SizedBox(height: 10,),


            SimpleButtonWidget(ontap: (){}, text: 'Forget password',textColor: Colors.white,),
            SizedBox(height: 30,),






            ButtonWidget(ontap: ()async{
              await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: emailConroller.text,
                  password: passwordController.text).then((onValue){
                    // after success pf login-naviagte to home screen---
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>HomeScreen()));
              }).onError((error,handleError){
                Get.snackbar('', 'Invalid email address',colorText: Colors.redAccent);
              });
            }, text: 'Login',
              textColor: Colors.white,
              buttonColor: Colors.green.shade800,
              buttonWidth: 200,
            ),

            SizedBox(height: 10,),

            ButtonWidget(ontap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>SginUp()));
            }, text: 'Sgin up',
              textColor: Colors.white,
              buttonColor: Colors.green.shade800,
              buttonWidth: 200,

            ),



          ],
        ),
      ) ,
    );
  }
}
