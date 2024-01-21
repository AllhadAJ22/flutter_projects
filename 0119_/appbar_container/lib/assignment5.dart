import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(children: [
            Image.asset(
              "asstes/first.png",
              width: 200,
              height: 200,
            ),
            const Text("Allhad jiddewar")
          ]),
        ),
      ),
    );
  }
}
