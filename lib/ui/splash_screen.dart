import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice_to_be/animations/hero_animation/hero_animation_1.dart'; 
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Timer(Duration(seconds: 3), (){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return HeroAnimation1();
    },));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
       child: Stack(fit:StackFit.passthrough,
       
        children: [
       Image.asset('assets/azaz.jpeg',fit: BoxFit.fill,),
          
          Align(
            alignment: Alignment(0, 0),
            child: Text('WELCOME',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),),
          )
       
        ],
       ),
     )
          
    )
    ;
  }
}