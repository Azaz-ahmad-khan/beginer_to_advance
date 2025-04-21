import 'package:flutter/material.dart';
 
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RICH TEXT'),
      backgroundColor: Colors.deepPurple,
      )
      ,
      body:Center(
        child: RichText(text: TextSpan(
          style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.w300,color: Colors.blue,),
          children: [
          TextSpan(text: 'hello world',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45,color: Colors.black)
          ),
          TextSpan(text: 'the glow')
          ]
        )),
      )
    );
  }
}