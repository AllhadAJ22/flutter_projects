import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_1280.jpg"),
            ),
          ),
          // color: Colors.amber,
          padding: const EdgeInsets.all(30),
          height: 300,
          width: 300,

          child: const Center(
            child: Text("core2web"),
          ),
        ),
      ),
    );
  }
}
