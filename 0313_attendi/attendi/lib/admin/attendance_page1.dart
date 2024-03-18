import 'package:attendi/admin/StudentModel.dart';
import 'package:attendi/model_classes/batches_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key, required this.batchobj});

  final Batches batchobj;

  @override
  State createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  List<StudentModel> studentList = [
    StudentModel(rollNo: 1, studName: "Aniket", status: true),
    StudentModel(rollNo: 2, studName: "Allhad", status: true),
    StudentModel(rollNo: 3, studName: "Gaurav", status: true),
    StudentModel(rollNo: 4, studName: "Prasad", status: true),
    StudentModel(rollNo: 5, studName: "Sachin", status: true),
    StudentModel(rollNo: 6, studName: "Pavan", status: true),
    StudentModel(rollNo: 7, studName: "Vaibhav", status: true),
    StudentModel(rollNo: 8, studName: "Dhanraj", status: true),
    StudentModel(rollNo: 9, studName: "Atharva", status: false),
  ];
  // List studentList = [];
  // List MainList = [];

  // void _getStudentList() async {
  //   MainList = await DatabaseSqflite.getStudents();

  //   for (int i = 0; i < MainList.length; i++) {
  //     if (widget.batchobj.batchName == MainList[i].batchName) {
  //       studentList.add(MainList[i]);
  //     }
  //   }

  //   // studentlist = MainList;

  //   print(studentList);
  //   setState(() {});
  // }

  // @override
  // void initState() {
  //   _getStudentList();
  //   super.initState();
  // }

  TextEditingController date = TextEditingController(
    text: DateFormat.yMMMd().format(DateTime.now()),
  );

  void getAttendanceCount() {
    // ignore: unused_local_variable
    int pCnt = 0;
    for (int i = 0; i < studentList.length; i++) {
      if (studentList[i].status) {
        pCnt++;
      }
    }
    print("present student  are : $pCnt");
    print("present student  are : ${studentList.length - pCnt}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 210,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              // color: Colors.amber
              image: DecorationImage(
                alignment: Alignment.topLeft,
                image: AssetImage("assets/Component 2.png"),
              ),
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 73,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 230,
                      height: 35,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(217, 217, 217, 0.4),
                          label: const Text("Search"),
                          contentPadding: const EdgeInsets.all(30),
                          prefixIcon: const Icon(Icons.search_outlined),
                          suffixIcon: const Icon(Icons.cancel_outlined),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextFormField(
                        controller: date,
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickDate = await showDatePicker(
                            context: context,
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2025),
                            initialDate: DateTime.now(),
                          );
                          if (pickDate != null) {
                            date.text = DateFormat.yMMMd().format(pickDate);
                          }
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down)
                  ],
                ),
                Text(
                  "Attendance",
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 485,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: studentList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      studentList[index].status = !studentList[index].status;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          // color: Colors.red,
                          color: (studentList[index].status)
                              ? Colors.green
                              : Colors.red,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text(
                                "${studentList[index].rollNo}",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.white)),
                              ),
                            ),
                            Text(
                              studentList[index].studName,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Colors.white)),
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 25),
                              child: Text(
                                (studentList[index].status) ? "P" : "A",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  getAttendanceCount();
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 20,
                        color: Color.fromRGBO(0, 0, 0, 0.09),
                      )
                    ],
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromRGBO(27, 182, 182, 1),
                  ),
                  child: Center(
                    child: Text(
                      "Save",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  print("pie chart");
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 20,
                        color: Color.fromRGBO(0, 0, 0, 0.09),
                      )
                    ],
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromRGBO(27, 182, 182, 1),
                  ),
                  child: Center(
                    child: Text(
                      "Attendance",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
