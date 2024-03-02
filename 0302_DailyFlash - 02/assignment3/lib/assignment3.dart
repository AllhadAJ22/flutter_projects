import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30),
            ),
          ),
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
