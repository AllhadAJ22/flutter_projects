import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment2(),
    );
  }
}

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});
  @override
  State createState() {
    print("In createState()");
    return _Assignment2State();
  }
}

class _Assignment2State extends State<Assignment2> {
  bool flag = true;
  @override
  void initState() {
    super.initState();
    print("In initState()");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("In didChangeDependencies()");
  }

  @override
  void didUpdateWidget(covariant Assignment2 oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("In didUpdateWidget()");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("In deactivate()");
  }

  @override
  void dispose() {
    super.dispose();
    print("In dispose()");
  }

  @override
  Widget build(BuildContext context) {
    print("In build()");
    

    return Scaffold(
      appBar: AppBar(
        title: const Text("LifeCycle of StatefulWidget"),
      ),
      body: (flag == true)
          ? Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            )
          : Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        flag = !flag;
        setState(() {
          print("in createState()");
        });
      }),
    );
  }
}
