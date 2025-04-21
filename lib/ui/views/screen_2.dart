// passing data from one screen to another screen

import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  var   nameFromHome;
  Screen2(this. nameFromHome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome $nameFromHome'),
      ),
    );
  }
}