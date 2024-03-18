// ignore_for_file: depend_on_referenced_packages

import 'package:attendi/admin/attendance_page1.dart';
import 'package:attendi/model_classes/batches_model.dart';
import 'package:attendi/student/student_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BatchInfo extends StatefulWidget {
  const BatchInfo(this.batchObj, {super.key});

  final Batches batchObj;

  @override
  State createState() => _BatchInfoState();
}

class _BatchInfoState extends State<BatchInfo> {
  // Batches? batchObj;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
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
                    ),
                    SizedBox(
                      width: 5,
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 45,
                  ),
                  child: Text(
                    "Batch Details",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Row(
            children: [
              const SizedBox(
                width: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Batch Name : ",
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                      Text(
                        widget.batchObj.batchName,
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Text(
                        "Location : ",
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                      Text(
                        widget.batchObj.location,
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Text(
                        "Number of Students : ",
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                      Text(
                        "${widget.batchObj.noOfStud}",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    "Batch Lead Details ",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Batch Leader : ",
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                      Text(
                        widget.batchObj.leader,
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Text(
                        "Mobile : ",
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                      Text(
                        "${widget.batchObj.mobileNo}",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Attendance(batchobj: widget.batchObj);
              }));
            },
            child: Container(
              height: 50,
              width: 312,
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
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return StudentsList(batchobj: widget.batchObj);
                }),
              );
              // Navigator.pop(context);
            },
            child: Container(
              height: 50,
              width: 312,
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
                  "Student List",
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
      ),
    );
  }
}

Batches? batchObj;
void getBatchObject(Batches obj) {
  batchObj = obj;
}
