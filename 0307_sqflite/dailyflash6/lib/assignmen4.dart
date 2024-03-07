import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Daily flash"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(border: Border.all(width: 2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(width: 2)),
                height: 100,
                width: 100,
                child: Container(
                  color: Colors.red,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(width: 2)),
                height: 100,
                width: 100,
                child: Container(
                  color: Colors.purple,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
