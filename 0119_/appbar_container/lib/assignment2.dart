import 'package:flutter/material.dart';

class Assignmen2 extends StatelessWidget{
  const Assignmen2({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("APPBAR",
            style: TextStyle(
             fontWeight: FontWeight.bold,
             color: Colors.white,  
          ),
        ),
        centerTitle: true,    //to make the title in appbar in center
        actions: const[       //to add icon at the end of appbar
          Icon(Icons.favorite,color: Colors.white,),
          SizedBox(width: 10,),
        ],   
        )
        ),

    );
  }
}