import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("APPBAR",style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,  
          ),
        ),
        actions: const[
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.message,color: Colors.white,),
          SizedBox(width: 10,),
        ],
      )
    ),
  );
  }
}