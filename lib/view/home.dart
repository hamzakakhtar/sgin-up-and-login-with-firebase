import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 400,),
            Text('Home Screen',style: TextStyle(color: Colors.white,fontSize: 50,
            fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
