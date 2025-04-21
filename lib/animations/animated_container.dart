// understanding foo animations

import 'package:flutter/material.dart';

class ContainerDesign extends StatefulWidget {
  const ContainerDesign({super.key});

  @override
  State<ContainerDesign> createState() => _ContainerDesignState();
}

class _ContainerDesignState extends State<ContainerDesign> {
  double width=100;
  double height=200;
  bool toggle=true;
  var color=Colors.blue;
  void change(){
    toggle=!toggle;
    toggle?width=100:width=200;
    toggle?height=200:height=100;
    toggle?color=Colors.blue:color=Colors.deepPurple;
  }
  var opacity=1.0;
void opac(){
  toggle?opacity=1.0 :opacity=0.4;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONTAINER ANIMATION'),
        centerTitle: true,
        backgroundColor: Colors.pink,
        elevation: 30,
      ),
      body: Center(
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: width,
              height: height,
              color: color,
              curve: Curves.fastEaseInToSlowEaseOut,
              duration: Duration(seconds: 2)),
            SizedBox(height: 10),
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: opacity,
              curve: Curves.bounceIn,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))
                  )
                ),
                onPressed: (){
                 setState(() {
                    change();
                    opac();
                 });
              
              
              
              
                }, child: Text('Animate',style: TextStyle(color: Colors.black),)),
            ),
          ],
        ),
      ),
    );
  }
}