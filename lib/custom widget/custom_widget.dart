
//C:\Users\Azaz\Desktop\practice_to_be\lib\custom widget\custom_widget.dart
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
 final String name;
  final Icon ? icon;
  final VoidCallback? callBack;
  final Color? bgColor;

  const CustomWidget({
    required this.name,
    this.icon,
    this.callBack,
    this.bgColor, 
    super.key
    }); 

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink(
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor
         
        ),
        
        onPressed: 
      (){
        /*now what ever will be given in 
        the call back function it will be assigned and executed by the onpressed function*/
        callBack!();
         }, child: Row(
          mainAxisSize: MainAxisSize.min,
         
      
        children: [
          Text(name),
         icon!,
        ],
      )),
    );
  }
}
