import 'package:attendi/database/database.dart';
import 'package:attendi/model_classes/student_model.dart';
import 'package:attendi/student/add_students.dart';
import 'package:attendi/student/student_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentDetails extends StatefulWidget {
  const StudentDetails(this.obj, {super.key});

  final StudentModelClass obj;

  @override
  State createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  void editDetails(StudentModelClass obj) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return AddStudent(obj);
        },
      ),
    );
  }

  void deleteStudent(StudentModelClass obj) {
    DatabaseSqflite.deleteStudent(obj);
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const StudentsList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          iconSize: 35,
                          color: const Color.fromRGBO(27, 182, 182, 1),
                          onPressed: () {
                            editDetails(widget.obj);
                          },
                          icon: const Icon(Icons.edit),
                        ),
                        IconButton(
                          iconSize: 35,
                          color: const Color.fromRGBO(27, 182, 182, 1),
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text(
                                'Alart',
                                style: TextStyle(color: Colors.red),
                              ),
                              content: const Text(
                                  'Do you want to delete this batch'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancel'),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () => deleteStudent(widget.obj),
                                  child: const Text('Delete'),
                                ),
                              ],
                            ),
                          ),
                          // onPressed: () {

                          //   deleteStudent(widget.obj);
                          // },
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 30,
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
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Batch Name :  ",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            // margin: const EdgeInsets.all(20),
                            // height: 50,
                            width: 190,
                            // color: Colors.amber,
                            child: Text(
                              widget.obj.batchName,
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Name :  ",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 57,
                            ),
                            // height: 50,
                            width: 210,
                            // color: Colors.amber,
                            child: Text(
                              widget.obj.name,
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Roll No :  ",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 52),
                            // height: 50,
                            width: 210,
                            // color: Colors.amber,
                            child: Text(
                              "${widget.obj.rollNo}",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Mobile No :  ",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            // height: 50,
                            padding: const EdgeInsets.only(left: 24),
                            width: 210,
                            // color: Colors.amber,
                            child: Text(
                              "${widget.obj.phoneNo}",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Gender :  ",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            // height: 50,
                            padding: const EdgeInsets.only(left: 47),
                            width: 210,
                            // color: Colors.amber,
                            child: Text(
                              (widget.obj.gender == true) ? "male" : "female",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Email :  ",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            // height: 50,
                            width: 210,
                            padding: const EdgeInsets.only(left: 64),
                            // color: Colors.amber,
                            child: Text(
                              widget.obj.email,
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 230),
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
