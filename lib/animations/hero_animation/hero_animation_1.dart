import 'package:flutter/material.dart';
import 'package:practice_to_be/animations/hero_animation/hero_animation_2.dart';

class HeroAnimation1 extends StatelessWidget {
  const HeroAnimation1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HERO ANIMATION'),
        backgroundColor: Colors.blue,
        centerTitle: true,

      ),
      body: Center(
        child: Hero(
          tag: 'background',
         child: InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context){
            return HeroAnimation2();
          })),
           child: Image(
            image: AssetImage('assets/azaz.jpeg'),
            height: 100,
            width: 100,
            
            ),
         )
          )
          ),

    );
  }
}