import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment(),
    );
  }
}
class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  int _count = 0;
  Widget black() => Container(
        height: 400,
        width: 10,
        color: Colors.black,
      );
  Widget orange() => Container(
        height: 50,
        width: 180,
        color: Colors.orange,
      );
  Widget white() => Container(
        height: 50,
        width: 180,
        color: Colors.white,
        child: (_count >= 4) ? chakra() : Container(),
      );
  Widget chakra() => Image.network(
      "https://media.istockphoto.com/id/1140581548/vector/black-ashoka-chakra-symbol-of-national-flag-of-the-republic-of-india-isolated-on-white.jpg?s=612x612&w=0&k=20&c=kcPU7WbJ5Gl2DC8R_YIIFxnfuTz1m60hgUdjEU_NR0Y=");
  Widget green() => Container(
        height: 50,
        width: 180,
        color: Colors.green,
      );
  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey
      ,
      appBar: AppBar(title: const Text("APP BAR")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [(_count >= 1) ? black() : Container()],
          ),
          Column(
            children: [
              (_count >= 2) ? orange() : Container(),
              (_count >= 3) ? white() : Container(),
              (_count >= 5) ? green() : Container()
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Text("+"),
      ),
    );
  }
}
