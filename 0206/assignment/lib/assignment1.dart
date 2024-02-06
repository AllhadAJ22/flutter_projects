import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});
  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  // int? selectedIndex = 0;
  // final List<String> imageList = [
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDUzQz0xXlDO3l0xI31im5Z3-aPZYG1P-p1A&usqp=CAU",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRafcL7wUOdtDRIRUMI_k2zdv8Ny1d3XI1W9Q&usqp=CAU",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6h9lAaN6SVfMtlxpzTdb9CrOLcqeLVw-bY0Nhv_vexs1uH1wivXIi84TEVZyUlV2x9qI&usqp=CAU",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8J6VBqh0L3lMEe_DAbZfJdO3tasWrc0_3r5WDBufiIwUNYXzy0NmfJGVGJZt6esXuyr8&usqp=CAU"
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display images"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDUzQz0xXlDO3l0xI31im5Z3-aPZYG1P-p1A&usqp=CAU"),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRafcL7wUOdtDRIRUMI_k2zdv8Ny1d3XI1W9Q&usqp=CAU"),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDUzQz0xXlDO3l0xI31im5Z3-aPZYG1P-p1A&usqp=CAU"),
          ),
        ],
      ),
    );
  }
}
