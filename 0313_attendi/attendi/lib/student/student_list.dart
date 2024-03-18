import 'package:attendi/admin/admin_home.dart';
import 'package:attendi/batch/add_batch_details.dart';
import 'package:attendi/batch/all_batches.dart';
import 'package:attendi/database/database.dart';
import 'package:attendi/model_classes/batches_model.dart';
import 'package:attendi/model_classes/student_model.dart';
import 'package:attendi/student/add_students.dart';
import 'package:attendi/student/student_details.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class StudentsList extends StatefulWidget {
  const StudentsList({super.key, this.batchobj});

  final Batches? batchobj;

  @override
  State createState() => _StudentsListState();
}

class _StudentsListState extends State<StudentsList> {
  List studentlist = [];
  List MainList = [];

  //call to get the the data in local list named cardList
  void _getStudentList() async {
    MainList = await DatabaseSqflite.getStudents();
    if (widget.batchobj != null) {
      for (int i = 0; i < MainList.length; i++) {
        if (widget.batchobj!.batchName == MainList[i].batchName) {
          studentlist.add(MainList[i]);
        }
      }
    } else {
      studentlist = MainList;
    }
    print(MainList);
    setState(() {});
  }

  void searchList(String val) {
    print(val);
    if (val == '') {
      _getStudentList();
      return;
    }
    List demo = [];
    for (int i = 0; i < studentlist.length; i++) {
      if (val == studentlist[i].name) {
        demo.add(studentlist[i]);
      }
    }
    studentlist.clear();
    studentlist = demo;
    setState(() {});
    print(demo);
  }

  @override
  void initState() {
    _getStudentList();
    super.initState();
  }

  studentInfo(StudentModelClass obj) {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return StudentDetails(obj);
        },
      ),
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // _getCards();
    return PopScope(
      canPop: false,
      child: Scaffold(
        key: _scaffoldState,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 120,
                child: DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(27, 182, 182, 1),
                  ),
                  child: Text(
                    'Menu',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Home',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AdminHome(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'All Batches',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BatchesHome(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Add Batches',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BatchesDetails(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'All Students',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StudentsList(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Add New Students',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddStudent(null),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Mark Attendance',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'view Attendance',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Profile',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Logout',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              _scaffoldState.currentState!.openDrawer();
                            },
                            icon: const Icon(Icons.menu_sharp)),
                        SizedBox(
                          width: 230,
                          height: 35,
                          child: TextFormField(
                            onFieldSubmitted: (newValue) {
                              searchList(newValue);
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  const Color.fromRGBO(217, 217, 217, 0.4),
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
              Container(
                height: 450,
                margin: const EdgeInsets.only(top: 20),
                child: ListView.builder(
                    itemCount: studentlist.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(217, 217, 217, 0.42),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(217, 217, 217, 0.42),
                                  offset: Offset(-2, -2),
                                  spreadRadius: 5)
                            ],
                          ),
                          padding: const EdgeInsets.only(top: 12),
                          margin: const EdgeInsets.only(
                              left: 45, right: 45, bottom: 22),
                          height: 50,
                          child: Text(
                            studentlist[index].name,
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
                          studentInfo(studentlist[index]);
                        },
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddStudent(null);
                  }));
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(314, 55),
                  backgroundColor: const Color.fromRGBO(27, 182, 182, 1),
                ),
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
      ),
    );
  }
}
