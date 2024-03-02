import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                offset: Offset(10, 10),
                color: Colors.red,
              ),
            ],
          ),
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
