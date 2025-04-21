import 'package:flutter/material.dart';

class CFade extends StatefulWidget {
  const CFade({super.key});

  @override
  State<CFade> createState() => _CFadeState();
}

class _CFadeState extends State<CFade> {

bool isFirst=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              sizeCurve: Curves.easeInOutSine,
              firstCurve: Curves.bounceInOut,
              secondCurve: Curves.easeIn,
              firstChild: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                 color: Colors.deepPurpleAccent.shade200,
                 shape: BoxShape.rectangle),
             
              height: 200,
              width: 200,
            ),
             secondChild: ClipRRect(
              borderRadius: BorderRadius.circular(30),
               child: Container(
                
                height: 100,
                width: 100,
                child: Image.asset('assets/azaz.jpeg',fit: BoxFit.cover,)),
             ), 
              crossFadeState:isFirst? CrossFadeState.showFirst:CrossFadeState.showSecond, duration: Duration(seconds: 2)),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent.shade200
                ),
                
                
                
                onPressed: (){
                setState(() {
                  isFirst=!isFirst;
                });
              }, child: Text('Animate'))
          ],
        ),
      ),
    );
  }
}