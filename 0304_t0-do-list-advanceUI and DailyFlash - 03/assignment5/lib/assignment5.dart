import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<Assignment5> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(500)),
          
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.green], stops: [0.5, 0.5])),
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
