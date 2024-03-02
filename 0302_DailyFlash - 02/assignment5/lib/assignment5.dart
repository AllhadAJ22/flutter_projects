import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
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
            color: (flag == true) ? Colors.red : Colors.blue,
            height: 200,
            width: 300,
            child: Center(
              child: (flag == true)
                  ? const Text("click me!")
                  : const Text("Container Tapped"),
            ),
          ),
        ),
      ),
    );
  }
}
