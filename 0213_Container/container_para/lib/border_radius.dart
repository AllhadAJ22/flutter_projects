import 'package:flutter/material.dart';

class BorderRadius1 extends StatefulWidget {
  const BorderRadius1({super.key});

  @override
  State createState() => _BorderRadius1State();
}

class _BorderRadius1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Border Radius"),
      ),
      body: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius:const BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(
            color: Colors.blue,
            width: 5,
          )
        ),
      ),
    );
  }
}
