// ignore_for_file: depend_on_referenced_packages

import 'package:attendi/student/student_list.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class AddStudent extends StatefulWidget {
  const AddStudent(this.obj, {super.key});
  final StudentModelClass? obj;

  @override
  State createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  @override
  void initState() {
    if (widget.obj != null) {
      setVal(widget.obj);
    }
    super.initState();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final SingleValueDropDownController _batch =
      SingleValueDropDownController();
  late final SingleValueDropDownController _gender =
      SingleValueDropDownController();

  final TextEditingController _name = TextEditingController();
  final TextEditingController _rollNo = TextEditingController();
  final TextEditingController _no = TextEditingController();
  // final TextEditingController _gender = TextEditingController();
  final TextEditingController _email = TextEditingController();

  void setVal(StudentModelClass? obj) {
    _name.text = obj!.name;
    _rollNo.text = " ${obj.rollNo}";
    _no.text = "${obj.phoneNo}";
    _email.text = obj.email;
    _batch.dropDownValue = DropDownValueModel(
        name: widget.obj!.batchName, value: widget.obj!.batchName);
    _gender.dropDownValue = (widget.obj!.gender == true)
        ? DropDownValueModel(name: "male", value: widget.obj!.gender)
        : DropDownValueModel(name: "female", value: widget.obj!.gender);
  }

  void clearController() {
    _batch.clearDropDown();
    _gender.clearDropDown();
    _name.clear();
    _rollNo.clear();
    _no.clear();
    _email.clear();
  }

  void saveDetails() {}
  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didpop) async {
        print(didpop);
        if (didpop) {
          return;
        }
      },
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
                    Container(
                      padding: const EdgeInsets.only(
                        top: 140,
                      ),
                      child: Text(
                        "Enter Students Details",
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
                height: 430,
                // margin: const EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        width: 330,
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 20),
                        child: DropDownTextField(
                          textFieldDecoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(217, 217, 217, 0.4),
                            // hintText: "Enter Batch name",
                            label: Container(
                              margin: const EdgeInsets.only(left: 90),
                              // color: Colors.amber,
                              child: const Text(
                                "Enter Batch name",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          // searchDecoration: const InputDecoration(hintText: "bdvjhdb"),
                          controller: _batch,
                          dropDownItemCount: 2,

                          dropDownList: const [
                            DropDownValueModel(name: "batch1", value: "batch1"),
                            DropDownValueModel(name: "batch2", value: "batch2"),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        width: 330,
                        height: 50,
                        child: TextFormField(
                          controller: _name,
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(217, 217, 217, 0.4),
                            hintText: 'Enter name',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        width: 330,
                        height: 50,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: _rollNo,
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(217, 217, 217, 0.4),
                            hintText: 'Enter RollNo',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        width: 330,
                        height: 50,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          controller: _no,
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(217, 217, 217, 0.4),
                            hintText: 'Enter mobile no',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                      ),
                      Container(
                        width: 330,
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 20),
                        child: DropDownTextField(
                          textFieldDecoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(217, 217, 217, 0.4),
                            // hintText: "Enter Batch name",
                            label: Container(
                              margin: const EdgeInsets.only(left: 105),
                              // color: Colors.amber,
                              child: const Text(
                                "Enter gender",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          // searchDecoration: const InputDecoration(hintText: "bdvjhdb"),
                          controller: _gender,
                          dropDownItemCount: 2,
                          dropDownList: const [
                            DropDownValueModel(name: "male", value: true),
                            DropDownValueModel(name: "female", value: false),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        width: 330,
                        height: 50,
                        child: TextFormField(
                          controller: _email,
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(217, 217, 217, 0.4),
                            hintText: 'Enter Email',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  saveDetails();
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(314, 55),
                    backgroundColor: const Color.fromRGBO(27, 182, 182, 1)),
                child: Text(
                  "Save",
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
                padding: const EdgeInsets.only(top: 40),
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

// class StudentModelClass {
//   String batchName;
//   String name;
//   int rollNo;
//   int phoneNo;
//   bool gender;
//   String email;

//   StudentModelClass({
//     required this.batchName,
//     required this.name,
//     required this.rollNo,
//     required this.phoneNo,
//     required this.gender,
//     required this.email,
//   });

//   Map<String, dynamic> updatemap() {
//     return {
//       "batchName": batchName,
//       "name": name,
//       "rollNo": rollNo,
//       "phoneNo": phoneNo,
//       "gender": (gender == true) ? 1 : 0,
//       "email": email
//     };
//   }

//   // Map<String, dynamic> workmap() {
//   //   return {
//   //     // "card_no": card_no,
//   //     "title": title,
//   //     "description": description,
//   //     "date": date,
//   //     "cardstatus": 0,
//   //   };
//   // }
// }
