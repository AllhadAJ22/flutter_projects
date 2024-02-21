import 'package:flutter/material.dart';

class Decoration1 extends StatefulWidget {
  const Decoration1({super.key});

  @override
  State createState() => _Decoration1State();
}

class _Decoration1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Deccoration"),
      ),
      body: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.yellow, width: 5),
        ),
      ),
    );
  }
}
