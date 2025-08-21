import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgin_up/utilties/components/button-widget.dart';
import 'package:sgin_up/utilties/components/text-widget.dart';
import 'package:sgin_up/utilties/components/textformfield-widget.dart';
import 'package:sgin_up/utilties/components/textformfield-widget1.dart';
import 'login-screen.dart';

class SginUp extends StatefulWidget {
  const SginUp({super.key});

  @override
  State<SginUp> createState() => _SginUpState();
}

class _SginUpState extends State<SginUp> {
  TextEditingController emailConroller=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController passwordController1=TextEditingController();
  bool isShow=true;
  bool isShow1=true;
  String success='';
  bool isLoaidng=false;
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
              hinttext: 'Password',
              hinttextColor: Colors.grey,
              textformfieldColor: Colors.white,
              symmetrice: 30,
              controller: passwordController,
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
            TextfieldWidget1(
              hinttext: 'Confirm password',
              hinttextColor: Colors.grey,
              textformfieldColor: Colors.white,
              symmetrice: 30,
              controller: passwordController1,
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              obscure: isShow1,
              onPressed: (){

                if(isShow1==false)
                {
                  isShow1=true;
                }
                else
                {
                  isShow1=false;
                }
                setState(() {

                });

              },
            ),


            SizedBox(height: 50,),


    isLoaidng?CircularProgressIndicator():
    ButtonWidget(ontap: ()async{
      isLoaidng=true;
      setState(() {

      });
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: emailConroller.text,
                  password: passwordController.text,
              ).
              // this function is call when user is successfully registered----
              then((onValue){
                isLoaidng=false;
                setState(() {

                });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));


              }).onError((error,handleError){
                isLoaidng=false;
                Get.snackbar('', 'Unvalible email address',colorText: Colors.red,
                backgroundColor: Colors.green);
                setState(() {

                });

              });


            }, text: 'Sgin up',
              textColor: Colors.white,
              buttonColor: Colors.green.shade800,
              buttonWidth: 200,

            ),
            SizedBox(height: 10,),


            ButtonWidget(ontap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>LoginScreen()));
            }, text: 'Login',
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
