import 'package:flutter/material.dart';
import 'assignment1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,  //to remove the debug banner from screen
      home: Assignment1(),
    );
  }
}
