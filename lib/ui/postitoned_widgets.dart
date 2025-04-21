import 'package:flutter/material.dart';

class PostitonedWidgets extends StatelessWidget {
  const PostitonedWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('POSTIONED WIDGET'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),

      body: Container(
        //giving the container full screeen size otherwise it will get the size of its child
         width: double.infinity,
          height: double.infinity,
          color: const Color.fromARGB(255, 135, 139, 96),
       child: Stack(
        children: [
          //using positioned widgets you can place your widget any where you want on your screen
          Positioned(
            top: 60,
            left: 70,
            child: Container(
              height: 80,
              width: 80,
              color: Colors.deepPurple,
            
            ),
          )
        ],
       ),
      ),
    );
  }
}