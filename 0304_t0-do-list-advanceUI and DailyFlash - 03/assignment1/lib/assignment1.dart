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
        child: Container(
          color: Colors.amber,
          padding: const EdgeInsets.all(30),
          height: 300,
          width: 300,
          child: Image.network(
            "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
