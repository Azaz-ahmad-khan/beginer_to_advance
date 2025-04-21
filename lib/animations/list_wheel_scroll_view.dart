

import 'package:flutter/material.dart';

class ScrollViewes extends StatelessWidget {
  const ScrollViewes({super.key});

  @override
  Widget build(BuildContext context) {
    List arrIndex=[1,2,3,4,5,6,7];
    
    return Scaffold(
      body: ListWheelScrollView(
        itemExtent: 100, 
        children:arrIndex.map((value)=>Container(
          decoration: BoxDecoration(
             color: Colors.blue,
             borderRadius: BorderRadius.circular(30)
          ),
         
        height: 100,
        width: 400,
        child: Text('$value',style: TextStyle(fontSize: 40,color: Colors.white),textAlign: TextAlign.center,),
        
      )).toList() ),
      
      );
  }
}