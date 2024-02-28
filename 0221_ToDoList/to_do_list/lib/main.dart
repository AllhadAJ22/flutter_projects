import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State createState() => _ToDoListState();
}

List colorList = [
  const Color.fromRGBO(250, 232, 232, 1),
  const Color.fromRGBO(232, 237, 250, 1),
  const Color.fromRGBO(250, 249, 232, 1),
  const Color.fromRGBO(250, 232, 250, 1),
  const Color.fromRGBO(250, 232, 232, 1)
];

class _ToDoListState extends State<ToDoList> {
  List worklist = [
    {
      'heading': "Lorem Ipsum is simply setting industry. ",
      'info':
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      'date': "10 july 2023"
    },
    {
      'heading': "Lorem Ipsum is simply setting industry. ",
      'info':
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      'date': "10 july 2023"
    },
    {
      'heading': "Lorem Ipsum is simply setting industry. ",
      'info':
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      'date': "10 july 2023"
    },
    {
      'heading': "Lorem Ipsum is simply setting industry. ",
      'info':
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      'date': "10 july 2023"
    },
    {
      'heading': "Lorem Ipsum is simply setting industry. ",
      'info':
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      'date': "10 july 2023"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        title: Text(
          "To-Do List",
          style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: worklist.length,
        itemBuilder: (BuildContext context, index) {
          return Container(
            decoration: BoxDecoration(
              color: colorList[index],
              boxShadow: const [BoxShadow(blurRadius: 10.0)],
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.only(left: 15, right: 15, top: 30),
            padding: const EdgeInsets.all(10),
            height: 112,
            width: 330,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      height: 52,
                      width: 52,
                      margin:
                          const EdgeInsets.only(top: 8, bottom: 5, right: 5),
                      child: Image.asset("assets/logo.png"),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 234,
                          margin: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          height: 15,
                          child: Text(
                            worklist[index]['heading'],
                            style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 42,
                          width: 250,
                          child: Text(
                            worklist[index]['info'],
                            style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 13,
                      width: 100,
                      child: Text(
                        worklist[index]['date'],
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.mode_edit_outlined,
                      color: Color.fromRGBO(0, 139, 148, 1),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.delete_outline_rounded,
                      color: Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
