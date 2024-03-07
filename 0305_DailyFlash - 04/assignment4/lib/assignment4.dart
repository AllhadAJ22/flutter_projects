import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});
  @override
  State createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.amber,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
