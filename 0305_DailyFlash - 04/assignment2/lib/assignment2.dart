import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        child: ElevatedButton(
          onPressed: () {},

          style: ElevatedButton.styleFrom(
            fixedSize: const Size(200, 200),
            shape: const CircleBorder(
              side: BorderSide(width: 3, color: Colors.red),
            ),
          ),
          // style: const ButtonStyle(
          //   shape: MaterialStatePropertyAll(
          //       OutlineInput1Border(const BorderSide(color: Colors.black))),
          //   side: MaterialStatePropertyAll(
          //     BorderSide(color: Colors.red),
          //   ),
          //   fixedSize: MaterialStatePropertyAll(
          //     Size(200, 200),
          //   ),
          // ),
          child: const Text("data"),
        ),
      ),
    );
  }
}
