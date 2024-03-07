import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});
  @override
  State createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: (flag)
            ? const Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Allhad"), Icon(Icons.ac_unit)],
              )
            : Row(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          flag = !flag;
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
