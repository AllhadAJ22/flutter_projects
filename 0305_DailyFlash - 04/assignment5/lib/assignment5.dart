import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});
  @override
  State createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        // hoverColor: Colors.amber,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
