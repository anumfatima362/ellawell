import 'dart:async';

import 'package:ellawell/screens/Atuntication_screen/Sign_In_screen.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

 class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => SignIn()));
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(child: Image(image: AssetImage('assets/images/app_title.png'))),


          ],
        ),
      ),
    );
  }
}


// Center(
// child: Padding(
// padding: const EdgeInsets.only(right: 40),
// child: Image.asset('assets/images/app_title.png'),
// ),
// ),
