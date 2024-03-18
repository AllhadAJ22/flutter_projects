import 'package:attendi/batch/all_batches.dart';
import 'package:attendi/database/database.dart';
import 'package:attendi/model_classes/batches_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BatchesDetails extends StatefulWidget {
  const BatchesDetails({super.key});

  @override
  State createState() => _BatchesDetailsState();
}

class _BatchesDetailsState extends State<BatchesDetails> {

  
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _batchname = TextEditingController();
  final TextEditingController _location = TextEditingController();
  final TextEditingController _noofStud = TextEditingController();
  final TextEditingController _leader = TextEditingController();
  final TextEditingController _mno = TextEditingController();

  void saveBatchDetails() {
    DatabaseSqflite.insertBatch(
      Batches(
          batchName: _batchname.text,
          location: _location.text,
          noOfStud: int.parse(_noofStud.text),
          leader: _leader.text,
          mobileNo: int.parse(_mno.text)),
    );
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
                      "Enter Batch Details",
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
              height: 30,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    width: 312,
                    child: TextFormField(
                      controller: _batchname,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Enter batch name",
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  SizedBox(
                    height: 50,
                    width: 312,
                    child: TextFormField(
                      controller: _location,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Enter Location",
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  SizedBox(
                    height: 50,
                    width: 312,
                    child: TextFormField(
                      controller: _noofStud,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Enter  number of students ",
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Batch Lead Details",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: 312,
                    child: TextFormField(
                      controller: _leader,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Enter batch leader’s name",
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  SizedBox(
                    height: 50,
                    width: 312,
                    child: TextFormField(
                      controller: _mno,
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Enter batch leader’s mobile",
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 53,
                  ),
                  GestureDetector(
                    onTap: () {
                      saveBatchDetails();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const BatchesHome();
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
