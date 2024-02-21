import 'package:flutter/material.dart';

class Padding1 extends StatefulWidget {
  const Padding1({super.key});

  @override
  State createState() => _Padding1State();
}

class _Padding1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Padding"),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
        height: 100,
        width: 100,
        color: Colors.blue,
      ),
    );
  }
}
