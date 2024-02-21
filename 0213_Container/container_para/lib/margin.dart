import 'package:flutter/material.dart';

class Margin1 extends StatefulWidget {
  const Margin1({super.key});

  @override
  State createState() => _Margin1State();
}

class _Margin1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Margin"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
        height: 100,
        width: 100,
        color: Colors.blue,
      ),
    );
  }
}
