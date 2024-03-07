import 'package:dailyflash_05/assignmen1.dart';
import 'package:dailyflash_05/assignmen2.dart';
import 'package:dailyflash_05/assignmen3.dart';
import 'package:dailyflash_05/assignmen4.dart';
import 'package:dailyflash_05/assignmen5.dart';
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
      home: Assignment5(),
    );
  }
}
