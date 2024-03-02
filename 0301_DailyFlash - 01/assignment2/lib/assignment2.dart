import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text("Assignment2"),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_forever),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_rounded),
          ),
        ],
      ),
    );
  }
}
