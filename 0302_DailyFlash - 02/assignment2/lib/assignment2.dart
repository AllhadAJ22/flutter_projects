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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.blue,
            border: Border(
              left: BorderSide(
                color: Colors.red,
                width: 5,
              ),
            ),
          ),
          height: 100,
          width: 100,
          child: const Center(
            child: Text(
              "Allhad",
            ),
          ),
        ),
      ),
    );
  }
}
