

import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  bool isClick = false;
  int correct = 0;
  bool screen1 = true;
  int questionindex = 0;
  List<Map> allQuestion = [
    {
      "question": "Parent of MaterialApp class is ",
      "options": ["Widget", "StateFulWIdget", "StateLessWidget", "State"],
      "answer": 1
    },
    {
      "question": "Parent of StateFulWIdget class is ",
      "options": ["Widget", "StateFulWIdget", "StateLessWidget", "State"],
      "answer": 0
    },
    {
      "question": "Parent of StateLessWidget class is ",
      "options": ["Widget", "StateFulWIdget", "StateLessWidget", "State"],
      "answer": 0
    },
    {
      "question": "Parent of State class is ",
      "options": ["Widget", "StateFulWIdget", "StateLessWidget", "State"],
      "answer": 1
    },
    {
      "question": "Parent of Text class is ",
      "options": ["Widget", "StateFulWIdget", "StateLessWidget", "State"],
      "answer": 2
    }
  ];
  int but1 = 0;
  int but2 = 0;
  int but3 = 0;
  int but4 = 0;

  void answer() {
    if (allQuestion[questionindex]["answer"] == 0) {
      but1 = 1;
    } else if (allQuestion[questionindex]["answer"] == 1) {
      but2 = 1;
    } else if (allQuestion[questionindex]["answer"] == 2) {
      but3 = 1;
    } else if (allQuestion[questionindex]["answer"] == 3) {
      but4 = 1;
    }
  }

  Color butColor(int a) {
    if (a == 1) {
      return Colors.green;
    } else if (a == 2) {
      return Colors.red;
    }
    return Colors.white;
  }

  Scaffold isQuestionScreen() {
    if (screen1 == true) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "QuizApp",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 30,
                fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Question : ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                Text(
                  " ${questionindex + 1} / ${allQuestion.length}",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              allQuestion[questionindex]["question"],
              style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: butColor(but1),
                  fixedSize: const Size(double.maxFinite, 50)),
              onPressed: () {
                if (isClick == false) {
                  setState(() {
                    if (allQuestion[questionindex]["answer"] == 0) {
                      correct++;
                      but1 = 1;
                    } else {
                      but1 = 2;
                      answer();
                    }
                    isClick = true;
                  });
                }
              },
              child: Text(
                "A. ${allQuestion[questionindex]["options"][0]}",
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: butColor(but2),
                  fixedSize: const Size(double.maxFinite, 50)),
              onPressed: () {
                if (isClick == false) {
                  setState(() {
                    if (allQuestion[questionindex]["answer"] == 1) {
                      but2 = 1;
                      correct++;
                    } else {
                      but2 = 2;
                      answer();
                    }
                    isClick = true;
                  });
                }
              },
              child: Text(
                "B. ${allQuestion[questionindex]["options"][1]}",
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: butColor(but3),
                  fixedSize: const Size(double.maxFinite, 50)),
              onPressed: () {
                if (isClick == false) {
                  setState(() {
                    if (allQuestion[questionindex]["answer"] == 2) {
                      but3 = 1;
                      correct++;
                    } else {
                      but3 = 2;

                      answer();
                    }

                    isClick = true;
                  });
                }
              },
              child: Text(
                "C. ${allQuestion[questionindex]["options"][2]}",
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: butColor(but4),
                  fixedSize: const Size(double.maxFinite, 50)),
              onPressed: () {
                if (isClick == false) {
                  setState(() {
                    if (allQuestion[questionindex]["answer"] == 3) {
                      but4 = 1;
                      correct++;
                    } else {
                      but4 = 2;
                      answer();
                    }
                    isClick = true;
                  });
                }
              },
              child: Text(
                "D. ${allQuestion[questionindex]["options"][3]}",
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (questionindex == 4) {
                screen1 = false;
              } else if (but1 != 0 || but2 != 0 || but3 != 0 || but4 != 0) {
                questionindex++;
                but1 = 0;
                but2 = 0;
                but3 = 0;
                but4 = 0;
                isClick=false;
              }
            });
          },
          child: const Icon(Icons.forward),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "QuizApp",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 30,
                fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Quiz is Completed",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Score : $correct/ ${allQuestion.length}",
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      screen1 = true;
                      but1 = 0;
                      but2 = 0;
                      but3 = 0;
                      but4 = 0;
                      questionindex = 0;
                      isClick = false;
                    });
                  },
                  child: const Text("Reset"))
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
