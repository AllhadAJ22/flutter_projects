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
      home: Assignment1(),
    );
  }
}

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});
  @override
  State createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  TextEditingController name = TextEditingController();
  TextEditingController cname = TextEditingController();
  TextEditingController location = TextEditingController();
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Dream Company"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: name,
            decoration: InputDecoration(
              hintText: "Enter Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: cname,
            decoration: InputDecoration(
              hintText: "Enter Company Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: location,
            decoration: InputDecoration(
              hintText: "Enter Location",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              flag = !flag;
              setState(() {});
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.black,
              fixedSize: const Size(200, 50),
            ),
            child: const Text("Submit"),
          ),
          const SizedBox(
            height: 20,
          ),
          (flag == true)
              ? Container(
                  height: 300,
                  width: 300,
                  child: Column(
                    children: [
                      const Text(
                        "Dream Company",
                        style: TextStyle(fontSize: 25),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Name : ${name.text}",
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Company Name : ${cname.text}",
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Location : ${location.text}",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
