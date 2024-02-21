import 'package:container_para/border_radius.dart';
import 'package:container_para/box_shadow.dart';
import 'package:container_para/color.dart';
import 'package:container_para/decoration.dart';
import 'package:container_para/gradient.dart';
import 'package:container_para/height_width.dart';
import 'package:container_para/margin.dart';
import 'package:flutter/material.dart';

import 'padding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gradient1(),
    );
  }
}
