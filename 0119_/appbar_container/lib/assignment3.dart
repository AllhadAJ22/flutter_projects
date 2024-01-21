import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            "Hello Core2Web",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body:Center(child:  Container(
          width: 360,
          height: 200,
          color: Colors.blue,
        ),)
      ),
    );
  }
}
