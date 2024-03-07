import 'package:dailyflash6/assignmen1.dart';
import 'package:dailyflash6/assignmen2.dart';
import 'package:dailyflash6/assignmen3.dart';
import 'package:dailyflash6/assignmen4.dart';
import 'package:dailyflash6/assignmen5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment5(),
    );
  }
}
