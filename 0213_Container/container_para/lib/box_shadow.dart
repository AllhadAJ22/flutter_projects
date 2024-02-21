import 'package:flutter/material.dart';

class BoxShadow1 extends StatefulWidget {
  const BoxShadow1({super.key});

  @override
  State createState() => _BoxShadow1State();
}

class _BoxShadow1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Box Shadow"),
      ),
      body: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.blue, width: 5),
          boxShadow: const [
            BoxShadow(color: Colors.purple, offset: Offset(30, 30), blurRadius: 8),
            BoxShadow(color: Colors.red, offset: Offset(20, 20), blurRadius: 8),
            BoxShadow(color: Colors.green, offset: Offset(10, 10), blurRadius: 8),
          ],
        ),
      ),
    );
  }
}
