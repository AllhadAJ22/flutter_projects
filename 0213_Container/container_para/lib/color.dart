import 'package:flutter/material.dart';

class Color1 extends StatefulWidget {
  const Color1({super.key});

  @override
  State createState() => _Color1State();
}

class _Color1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Color"),
      ),
      body: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.amber,
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
