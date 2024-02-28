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
  List data = [];
  List data1 = [];
  void addData() {
    data1.add(name.text);
    data1.add(cname.text);
    data1.add(location.text);
    data.add(data1);

    // print(data);
    name.clear();
    cname.clear();
    location.clear();
    data1 = [];
  }

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
              setState(() {
                addData();
              });
              flag = true;
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
                  // color: Colors.red,
                  height: 400,
                  width: double.infinity,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [BoxShadow(blurRadius: 10)],
                              color: Colors.white),
                          margin: const EdgeInsets.only(
                              top: 30, left: 50, right: 50),
                          height: 200,
                          width: double.infinity,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Dream Company",
                                style: TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Name : ${data[index][0]}",
                                style: const TextStyle(fontSize: 20),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Company Name : ${data[index][1]}",
                                style: const TextStyle(fontSize: 20),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Location : ${data[index][2]}",
                                style: const TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        );
                      }))
              : Container(),
        ],
      ),
    );
  }
}
