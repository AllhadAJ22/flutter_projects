import 'package:attendi/database/database.dart';
import 'package:flutter/material.dart';
import 'splash_screen1.dart';

void main() {
  runApp(const MyApp());
  DatabaseSqflite.insertlogin();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
