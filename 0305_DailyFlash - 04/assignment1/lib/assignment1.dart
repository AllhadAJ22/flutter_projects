import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          shadowColor: MaterialStateColor.resolveWith((states) => Colors.red)
        ),
        child: const Text("data"),
      )),
    );
  }
}
