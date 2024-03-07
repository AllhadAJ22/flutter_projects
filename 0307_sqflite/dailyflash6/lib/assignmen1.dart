import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Daily Flash"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("asstes/food.jpg"),
          Container(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: const Text(
              "Burger",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              "Anna Theoktisto's Crispy Comté Cheeseburgers uses brioche hamburger buns, butter lettuce, and red Tomato..",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
