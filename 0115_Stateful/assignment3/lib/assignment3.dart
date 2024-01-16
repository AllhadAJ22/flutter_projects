import 'package:flutter/material.dart';
class Assignment3 extends StatefulWidget{
  const Assignment3({super.key});
  State<Assignment3> createState( ) => _Assignment3State();
}
class _Assignment3State extends State<Assignment3> {
  int? selectedIndex = 0;
  final List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDUzQz0xXlDO3l0xI31im5Z3-aPZYG1P-p1A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRafcL7wUOdtDRIRUMI_k2zdv8Ny1d3XI1W9Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6h9lAaN6SVfMtlxpzTdb9CrOLcqeLVw-bY0Nhv_vexs1uH1wivXIi84TEVZyUlV2x9qI&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8J6VBqh0L3lMEe_DAbZfJdO3tasWrc0_3r5WDBufiIwUNYXzy0NmfJGVGJZt6esXuyr8&usqp=CAU"
    ];
  void showNextImage(){
    setState(() {
      if(selectedIndex == imageList.length-1)
      {
        selectedIndex = -1;
      }
      selectedIndex = selectedIndex!+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display images"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageList[selectedIndex!],
              width: 300,
              height: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: showNextImage,
               child: const Text("next"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {setState(() {
              selectedIndex = 0;
            });}, child: const Text("reset"))
          ],
        ),
      ),
    );
  }
}