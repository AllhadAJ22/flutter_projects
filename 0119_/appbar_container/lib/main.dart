
import 'package:appbar_container/assignment2.dart';
import 'package:appbar_container/assignment3.dart';
import 'package:appbar_container/assignment4.dart';
import 'package:appbar_container/assignment6.dart';
import 'package:appbar_container/assignment7.dart';
import 'package:flutter/material.dart';
import 'assignment1.dart';
import 'assignment5.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build (BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment5(),
      );
  }

}