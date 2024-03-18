
import 'package:attendi/admin/StudentModel.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class AttendanceData extends StatefulWidget {
  const AttendanceData({super.key});

  @override
  State createState() => _AttendanceDataState();
}

class _AttendanceDataState extends State<AttendanceData> {
  TextEditingController date = TextEditingController(
    text: DateFormat.yMMMd().format(DateTime.now()),
  );

  int presentStudent = 0;
  int absentStudent = 0;

  @override
  void initState() {
    super.initState();
    calculateAttendance();
  }

  void calculateAttendance() {
    presentStudent = studentList.where((student) => student.status).length;
    absentStudent = studentList.where((student) => !student.status).length;
  }

  double getPresentStudent() {
    for (int i = 0; i < studentList.length; i++) {
      if (studentList[i].status) {
        presentStudent++;
      }
    }
    return presentStudent / 100;
  }

  double getabsentStudent() {
    for (int i = 0; i < studentList.length; i++) {
      if (!studentList[i].status) {
        absentStudent++;
      }
    }
    return absentStudent / 100;
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 230,
                      height: 35,
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       filled: true,
                      //       fillColor: const Color.fromRGBO(217, 217, 217, 0.4),
                      //       label: const Text("Search"),
                      //       contentPadding: const EdgeInsets.all(30),
                      //       prefixIcon: const Icon(Icons.search_outlined),
                      //       suffixIcon: const Icon(Icons.cancel_outlined),
                      //       border: OutlineInputBorder(
                      //         borderSide: BorderSide.none,
                      //         borderRadius: BorderRadius.circular(50),
                      //       ),
                      //     ),
                      //   ),
                    ),
                    SizedBox(
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
                      child: TextField(
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
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 200,
            width: 200,
            child: PieChart(
              PieChartData(
                sectionsSpace: 2,
                // centerSpaceRadius: 5,
                // centerSpaceColor: Colors.green,
                sections: [
                  PieChartSectionData(
                    value: presentStudent.toDouble(),
                    title:
                        "${(presentStudent / studentList.length * 100).toStringAsFixed(1)}%",
                    color: Colors.green,
                    radius: 100,
                    titleStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  PieChartSectionData(
                    value: absentStudent.toDouble(),
                    title:
                        "${(absentStudent / studentList.length * 100).toStringAsFixed(1)}%",
                    color: Colors.red,
                    radius: 100,
                    titleStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 25,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Present",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 25,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Absent ",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
