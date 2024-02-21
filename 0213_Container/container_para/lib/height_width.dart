import 'package:flutter/material.dart';

class Height extends StatefulWidget {
  const Height({super.key});

  @override
  State createState() => _HeightState();
}

class _HeightState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Height Weight Color"),
      ),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.red,
      ),
    );
  }
}
