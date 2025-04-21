import 'package:flutter/material.dart';

class GradientColors extends StatelessWidget {
  const GradientColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
             Color(0xff09213f),
             Color(0xff537895)
            ],
            begin: FractionalOffset(1, 0),
            end: FractionalOffset(0, 0)
            ),
            
          ),
          child: Center(child: Text('GRADIENTS')),
        ),
      ),
    );
  }
}