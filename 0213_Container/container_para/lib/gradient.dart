import 'package:flutter/material.dart';

class Gradient1 extends StatefulWidget {
  const Gradient1({super.key});

  @override
  State createState() => _Gradient1State();
}

class _Gradient1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Gradient"),
      ),
      body: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.blue, width: 5),
          gradient: const LinearGradient(
            stops: [0.3, 0.5],
            colors: [Colors.red, Colors.green],
          ),
        ),
      ),
    );
  }
}
