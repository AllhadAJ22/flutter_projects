import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});
  @override
  State createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Assignment1"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
        ],
      ),
    );
  }
}
