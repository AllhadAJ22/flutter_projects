import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});
  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  int _count = 1;
  List<int> l1=[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("data"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: l1.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,

              color: (_count%2==0)?Colors.blue:Colors.amber,
              margin: const EdgeInsets.all(10),
              child: Center(child: Text("${l1[index]}")),
              
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {

              l1.add(_count);
              _count++;
            });
          },
          child: const Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
    );
  }
}
