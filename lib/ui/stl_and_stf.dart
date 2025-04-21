import 'package:flutter/material.dart';

class AdditonSubtraction extends StatefulWidget {
  const AdditonSubtraction({super.key});

  @override
  State<AdditonSubtraction> createState() => _AdditonSubtractionState();
}

class _AdditonSubtractionState extends State<AdditonSubtraction> {
  TextEditingController no1Controller=TextEditingController();
  TextEditingController no2Controller=TextEditingController();
  var result='';
  
 
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        title: Text('BASIC MATHS OPERATION'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: no1Controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
                  
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: no2Controller,
               decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height:20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: [
                ElevatedButton(onPressed: (){
                                setState(() {
                              var no1= int.parse(no1Controller.text.toString());
                               var no2= int.parse(no2Controller.text.toString());
                               var sum=no1+no2;
                               result='the sum of the $no1 and $no2 is $sum';
                          
                          
                             
                                });
                              }, child: Text('Add')),
                              // SizedBox(width: 5),
                          
                              ElevatedButton(onPressed: (){
                                var no1= int.parse(no1Controller.text.toString());
                               var no2= int.parse(no2Controller.text.toString());
                               var sub=no1-no2;
                               result='the subtraction of $no1 and $no2 is $sub';
                              }, child: Text('Subtract')),
                              //  SizedBox(width: 5),
                              
                              ElevatedButton(onPressed: (){
                                var no1= int.parse(no1Controller.text.toString());
                               var no2= int.parse(no2Controller.text.toString());
                               var mul=no2*no1;
                               result='the multiplication of $no1 and $no2 is $mul';
                          
                              }, child: Text('Multiply')),
                          
                              //  SizedBox( width: 5),
                              ElevatedButton(onPressed: (){
                                setState(() {
                                  var no1= int.parse(no1Controller.text.toString());
                               var no2= int.parse(no2Controller.text.toString());
                               var div =no1/no2;
                               result='the div of $no1 and $no2 is ${div.toStringAsFixed(3)}';
                                  
                                });
                              }, child: Text('Div'))
              ],
            ),
          ),
          SizedBox(height: 20),
         


          Text(result,style: TextStyle(fontSize: 40),)
        ],
      ),
    );
  }
}