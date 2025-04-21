import 'package:flutter/material.dart';

class MyListWidget extends StatelessWidget {
  const MyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
List arrDat=[
 {'name':'azaz','mobno':'03318590654','unread':'01'},
 {'name': 'mohsin', 'mobno':'03315265967', 'unread':'04'},
 {'name': 'shoaib','mobno':'0335898989','unread':'5'},
 {'name':'adil dk', 'mobno':'033245604','unread':'3'}












];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('LIST TO WIDGETS'),
        centerTitle: true,
      ),
      body:ListView(
        children: arrDat.map((value){
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(value['name']),
            subtitle: Text(value['mobno']),
            trailing: CircleAvatar(radius: 15,child: Text(value['unread'])),
            
          );
        }).toList()
      )
        
      
         
    
        )
      
    ;
  }
}