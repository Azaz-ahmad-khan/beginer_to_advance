//  range slider in flutter 

import 'package:flutter/material.dart';

class RangeSliders extends StatefulWidget {
  const RangeSliders({super.key});

  @override
  State<RangeSliders> createState() => _RangeSlidersState();
}

class _RangeSlidersState extends State<RangeSliders> {
  RangeValues values=RangeValues(0.5, 9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       RangeSlider(
        activeColor: const Color.fromARGB(255, 233, 30, 206),
        inactiveColor: const Color.fromARGB(255, 233, 94, 30),
        divisions: 10,
        labels: RangeLabels(values.start.toString(),  values.end.toString()),
        values:values ,
       min: 0,
       max: 10,
        onChanged: (newValue){
        setState(() {
          values=newValue;
        });
       })
        ],
      ),),
    );
  }
}