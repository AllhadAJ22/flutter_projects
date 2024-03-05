import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.amber,
            boxShadow: [
              BoxShadow(color: Colors.black, offset: Offset(0, -10),blurRadius: 7),
            ],
          ),
          height: 200,
          width: 300,
        ),
      ),
    );
  }
}
