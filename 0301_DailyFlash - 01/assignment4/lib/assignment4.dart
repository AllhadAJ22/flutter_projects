import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                color: Colors.red,
                width: 10,
              )),
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
