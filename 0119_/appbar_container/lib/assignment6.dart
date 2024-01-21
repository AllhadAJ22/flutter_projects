import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget{
  const Assignment6({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(child: Column(
          children: [
            Container(width: 100,height: 100,color: Colors.red,),
            Container(width: 100,height: 100,color: Colors.black,),
            Container(width: 100,height: 100,color: Colors.blue,),
            Container(width: 100,height: 100,color: Colors.white,),
            Container(width: 100,height: 100,color: Colors.orange,),

            Container(width: 100,height: 100,color: Colors.red,),
            Container(width: 100,height: 100,color: Colors.black,),
            Container(width: 100,height: 100,color: Colors.blue,),
            Container(width: 100,height: 100,color: Colors.white,),
            Container(width: 100,height: 100,color: Colors.orange,),

          ],

        ),)
        )
        ),
    );
  }
}