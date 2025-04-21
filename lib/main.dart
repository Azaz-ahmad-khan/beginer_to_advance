import 'package:flutter/material.dart';
import 'package:practice_to_be/animations/twin_animation.dart';
import 'package:practice_to_be/ui/gradients.dart';
 import 'package:practice_to_be/ui/views/mapping_list_to_widgets.dart';

 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: TwinsAnimation() ,
    );
  }
}

