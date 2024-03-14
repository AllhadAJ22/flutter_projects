// ignore_for_file: depend_on_referenced_packages

import 'package:attendi/student/add_students.dart';
import 'package:attendi/student/student_details.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class StudentsList extends StatefulWidget {
  const StudentsList({super.key});

  @override
  State createState() => _StudentsListState();
}

class _StudentsListState extends State<StudentsList> {
  List studentlsit = [
    StudentModelClass(
        batchName: "batch1",
        name: "Aniket",
        rollNo: 101,
        phoneNo: 1234567895,
        gender: true,
        email: "email"),
    StudentModelClass(
        batchName: "batch1",
        name: "Allhad",
        rollNo: 101,
        phoneNo: 1234567895,
        gender: true,
        email: "email"),
    StudentModelClass(
        batchName: "batch1",
        name: "Atharva",
        rollNo: 101,
        phoneNo: 1234567895,
        gender: true,
        email: "email"),
    StudentModelClass(
        batchName: "batch1",
        name: "Gaurav",
        rollNo: 101,
        phoneNo: 1234567895,
        gender: true,
        email: "email"),
    StudentModelClass(
        batchName: "batch1",
        name: "Prasad",
        rollNo: 101,
        phoneNo: 1234567895,
        gender: true,
        email: "email"),
    StudentModelClass(
        batchName: "batch1",
        name: "sumant",
        rollNo: 101,
        phoneNo: 1234567895,
        gender: true,
        email: "email"),
    StudentModelClass(
        batchName: "batch1",
        name: "Aniket",
        rollNo: 101,
        phoneNo: 1234567895,
        gender: true,
        email: "email"),
    StudentModelClass(
        batchName: "batch1",
        name: "rahul",
        rollNo: 101,
        phoneNo: 1234567895,
        gender: true,
        email: "email"),
  ];
  studentInfo(StudentModelClass obj) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return StudentDetails(obj);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 45,
                    ),
                    child: Text(
                      "Students Details",
                      style: GoogleFonts.poppins(
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
            SizedBox(
              height: 450,
              // margin: const EdgeInsets.all(20),
              child: ListView.builder(
                  itemCount: studentlsit.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(217, 217, 217, 0.42),
                        ),
                        padding: const EdgeInsets.only(top: 12),
                        margin: const EdgeInsets.only(
                            left: 45, right: 45, bottom: 22),
                        height: 50,
                        child: Text(
                          studentlsit[index].name,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        studentInfo(studentlsit[index]);
                      },
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const AddStudent(null);
                }));
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(314, 55),
                  backgroundColor: const Color.fromRGBO(27, 182, 182, 1)),
              child: Text(
                "Add New Student",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            // Container(
            //   padding: const EdgeInsets.only(top: 12),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(50),
            //     color: const Color.fromRGBO(27, 182, 182, 1),
            //   ),
            //   margin: const EdgeInsets.only(left: 40, right: 40, bottom: 30),
            //   height: 55,
            //   width: 314,
            //   child: Text(
            //     "Add New Student",
            //     textAlign: TextAlign.center,
            //     style: GoogleFonts.poppins(
            //       textStyle: const TextStyle(
            //         fontWeight: FontWeight.w700,
            //         fontSize: 18,
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Image.asset("assets/attendance 1.png")],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StudentModelClass {
  String batchName;
  String name;
  int rollNo;
  int phoneNo;
  bool gender;
  String email;

  StudentModelClass({
    required this.batchName,
    required this.name,
    required this.rollNo,
    required this.phoneNo,
    required this.gender,
    required this.email,
  });

  Map<String, dynamic> updatemap() {
    return {
      "batchName": batchName,
      "name": name,
      "rollNo": rollNo,
      "phoneNo": phoneNo,
      "gender": (gender == true) ? 1 : 0,
      "email": email
    };
  }

  // Map<String, dynamic> workmap() {
  //   return {
  //     // "card_no": card_no,
  //     "title": title,
  //     "description": description,
  //     "date": date,
  //     "cardstatus": 0,
  //   };
  // }
}
