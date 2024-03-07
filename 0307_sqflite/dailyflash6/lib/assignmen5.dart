import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment5> {
  bool c1 = false;
  bool c2 = false;
  bool c3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                c1 = true;
                c2 = false;
                c3 = false;
                setState(() {});
              },
              child: Container(
                decoration: BoxDecoration(
                    color: (c1 == true) ? Colors.red : Colors.white,
                    border: Border.all(width: 2)),
                height: 100,
                width: 200,
              ),
            ),
            GestureDetector(
              onTap: () {
                c2 = true;
                c1 = false;
                c3 = false;
                setState(() {});
              },
              child: Container(
                decoration: BoxDecoration(
                    color: (c2 == true) ? Colors.red : Colors.white,
                    border: Border.all(width: 2)),
                height: 100,
                width: 200,
              ),
            ),
            GestureDetector(
              onTap: () {
                c3 = true;
                c2 = false;
                c1 = false;
                setState(() {});
              },
              child: Container(
                decoration: BoxDecoration(
                    color: (c3 == true) ? Colors.red : Colors.white,
                    border: Border.all(width: 2)),
                height: 100,
                width: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
