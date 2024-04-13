import 'dart:async';
import 'package:bmi/intro.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget
{




  @override

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return introScreen();
      }));
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade700,
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: CircleAvatar(

            child: Center(child:Image.asset("assets/images/logo.png") ),

          ),
        ),
      ),
    );
  }
}