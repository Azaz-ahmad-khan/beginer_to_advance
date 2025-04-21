import 'package:flutter/material.dart';

class HeroAnimation2 extends StatelessWidget {
  const HeroAnimation2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ANIMATION APPLIED'),
        backgroundColor: Colors.blue,
      ),
      body: Hero(
        tag: 'background',
        child: Image.asset('assets/azaz.jpeg',width: double.infinity,height: double.infinity,)),
    );
  }
}