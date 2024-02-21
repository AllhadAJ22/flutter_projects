import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextFieldDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State {
  TextEditingController Name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("TextFieldDemo"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            controller: Name,
            decoration: InputDecoration(
              hintText: "Enter name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter college",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onChanged: (val) {
              print(val);
            },
            onSubmitted: (val) {
              print(val);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(Name.text);
        },
      ),
    );
  }
}
