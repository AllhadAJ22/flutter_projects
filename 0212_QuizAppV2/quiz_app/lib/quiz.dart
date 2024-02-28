import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class SingleQue {
  final String? question;
  final List<String>? options;
  final int? ansindex;
  const SingleQue({this.question, this.options, this.ansindex});
}

class _QuizAppState extends State {
  List allQuestions = [
    const SingleQue(
      question: "Parent of StateFulWidget class is",
      options: ["Widget", "State", "StateLessWidget", "MaterialApp"],
      ansindex: 0,
    ),
    const SingleQue(
      question: "Parent of MaterialApp class is",
      options: ["Widget", "State", "StatefulWidget", "MaterialApp"],
      ansindex: 2,
    ),
    const SingleQue(
      question: "Parent of State class is",
      options: ["Widget", "State", "StateFulWidget", "MaterialApp"],
      ansindex: 2,
    ),
    const SingleQue(
      question: "Parent of Text is",
      options: ["Widget", "State", "StatefulWidget", "StateLessWidget"],
      ansindex: 3,
    ),
    const SingleQue(
      question: "Parent of Scaffold is",
      options: ["Widget", "StateFulWidget", "State", "MaterialApp"],
      ansindex: 1,
    ),
  ];
  int currentque = 0;
  int selectedScreen = 0;
  int selectedans = -1;
  int correctans = 0;

  MaterialStateProperty<Color?> butColor(int butIndex) {
    if (selectedans != -1) {
      if (butIndex == allQuestions[currentque].ansindex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (butIndex == selectedans) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(Colors.grey);
      }
    } else {
      return const MaterialStatePropertyAll(Colors.grey);
    }
  }

  Scaffold screen() {
    if (selectedScreen == 0) {
      return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Quiz App",
            style: TextStyle(
                color: Colors.grey, fontSize: 30, fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          margin:
              const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(blurRadius: 20),
                  ],
                ),
                margin: const EdgeInsets.only(top: 50, bottom: 60),
                child: Image.network(
                  "https://t3.ftcdn.net/jpg/05/19/43/54/360_F_519435456_iuZWEuwGOWmygRohfDOT0uKVADWpumMk.jpg",
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(blurRadius: 20),
                  ],
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(400, 50),
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      selectedScreen++;
                    });
                  },
                  child: const Text(
                    "Tap to start Quiz",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (selectedScreen == 1) {
      return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Quiz App",
            style: TextStyle(
                color: Colors.grey, fontSize: 30, fontWeight: FontWeight.w800),
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
                  "Questions : ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  "${currentque + 1} / ${allQuestions.length}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Que ${currentque + 1}: ${allQuestions[currentque].question}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                boxShadow: [
                  BoxShadow(blurRadius: 20),
                ],
              ),
              height: 300,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: butColor(0),
                      fixedSize: const MaterialStatePropertyAll(
                        Size(350, 50),
                      ),
                    ),
                    onPressed: () {
                      if (selectedans == -1) {
                        selectedans = 0;
                        setState(() {});
                      }
                    },
                    child: Text(
                      "A. ${allQuestions[currentque].options[0]}",
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: butColor(1),
                      fixedSize: const MaterialStatePropertyAll(
                        Size(350, 50),
                      ),
                    ),
                    onPressed: () {
                      if (selectedans == -1) {
                        selectedans = 1;
                        setState(() {});
                      }
                    },
                    child: Text("B. ${allQuestions[currentque].options[1]}",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: butColor(2),
                      fixedSize: const MaterialStatePropertyAll(
                        Size(350, 50),
                      ),
                    ),
                    onPressed: () {
                      if (selectedans == -1) {
                        selectedans = 2;
                        setState(() {});
                      }
                    },
                    child: Text("C. ${allQuestions[currentque].options[2]}",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: butColor(3),
                      fixedSize: const MaterialStatePropertyAll(
                        Size(350, 50),
                      ),
                    ),
                    onPressed: () {
                      if (selectedans == -1) {
                        selectedans = 3;
                        setState(() {});
                      }
                    },
                    child: Text("D. ${allQuestions[currentque].options[3]}",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedans != -1) {
              if (selectedans == allQuestions[currentque].ansindex) {
                correctans++;
              }
              if (currentque == allQuestions.length - 1) {
                selectedScreen++;
              }
              currentque++;
              selectedans = -1;
              setState(() {});
            }
          },
          tooltip: "Next Question",
          child: const Icon(Icons.forward),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Quiz App",
            style: TextStyle(
                color: Colors.grey, fontSize: 30, fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "asstes/trop.gif",
              width: 500,
              height: 400,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "you have completed the Quiz",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Score : $correctans / ${allQuestions.length}",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            (correctans == allQuestions.length)
                ? const Text("Your All Answers Are Correct")
                : ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      selectedScreen = 0;
                      currentque = 0;
                      selectedans = -1;
                      correctans = 0;

                      setState(() {});
                    },
                    child: const Text(
                      "Restart  Quiz",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return screen();
  }
}
