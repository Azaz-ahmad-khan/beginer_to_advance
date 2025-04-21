// data transfer between screens
import 'package:flutter/material.dart';
import 'package:practice_to_be/ui/views/screen_2.dart';

class Screen1 extends StatelessWidget {
    Screen1({super.key});


  @override
  Widget build(BuildContext context) {
TextEditingController nameController=TextEditingController();
    
    return Scaffold(
      appBar: AppBar(
        title: Text('DATA PASSING'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Enter your name and it will be passed to the next screen'),
            TextField(
                controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(34),
                  
                )
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Screen2(nameController.text.toString())
              ));
            }, child: Text('Send'))
          ],
        ),
      ),
    );
  }
}