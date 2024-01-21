import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Center(child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[ Container(
          width: 200,
          height: 200,
          color: Colors.red,
          
        ),Container(
            width: 200,
            height: 200,
            color:Colors.orange,
          ),
          ],
        ),),
        )
    );
  }
}
