import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment3> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            flag = !flag;
            setState(() {});
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                  width: 10, color: (flag) ? Colors.red : Colors.green),
            ),
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
