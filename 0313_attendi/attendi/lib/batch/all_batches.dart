// ignore_for_file: depend_on_referenced_packages

import 'package:attendi/batch/add_details.dart';
import 'package:attendi/batch/batch_info.dart';
import 'package:attendi/batch/batches_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BatchesHome extends StatefulWidget {
  const BatchesHome({super.key});

  @override
  State createState() => _BatchesHomeState();
}

class _BatchesHomeState extends State<BatchesHome> {
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
                  Container(
                    padding: const EdgeInsets.only(
                      top: 45,
                    ),
                    child: Text(
                      "Batches",
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
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: batchesList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return BatchInfo(batchesList[index]);
                      },
                    ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(4, 150, 150, 1),
                        ),
                        child: Center(
                          child: Text(
                            batchesList[index].batchName,
                            style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const BatchesDetails();
            },
          ));
        },
        backgroundColor: const Color.fromRGBO(27, 182, 182, 1),
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
