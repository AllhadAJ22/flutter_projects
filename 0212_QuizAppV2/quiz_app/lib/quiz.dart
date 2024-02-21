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
  bool selectedScreen = true;
  int selectedans = -1;
  int correctans = 0;

  MaterialStateProperty<Color?> butColor(int butIndex) {
    if (selectedans != -1) {
      if (butIndex == allQuestions[currentque].ansindex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (butIndex == selectedans) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  Scaffold screen() {
    if (selectedScreen == true) {
      return Scaffold(
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
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: butColor(0),
                  fixedSize: const MaterialStatePropertyAll(Size(400, 50))),
              onPressed: () {
                if (selectedans == -1) {
                  selectedans = 0;
                  setState(() {});
                }
              },
              child: Text("A. ${allQuestions[currentque].options[0]}"),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: butColor(1),
                  fixedSize: const MaterialStatePropertyAll(Size(400, 50))),
              onPressed: () {
                if (selectedans == -1) {
                  selectedans = 1;
                  setState(() {});
                }
              },
              child: Text("B. ${allQuestions[currentque].options[1]}"),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: butColor(2),
                  fixedSize: const MaterialStatePropertyAll(Size(400, 50))),
              onPressed: () {
                if (selectedans == -1) {
                  selectedans = 2;
                  setState(() {});
                }
              },
              child: Text("C. ${allQuestions[currentque].options[2]}"),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: butColor(3),
                  fixedSize: const MaterialStatePropertyAll(Size(400, 50))),
              onPressed: () {
                if (selectedans == -1) {
                  selectedans = 3;
                  setState(() {});
                }
              },
              child: Text("D. ${allQuestions[currentque].options[3]}"),
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
                selectedScreen = false;
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
            Image.network(
              "https://www.shutterstock.com/image-vector/best-champions-cup-trophy-vector-600nw-2098544092.jpg",
              width: 500,
              height: 200,
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
                    onPressed: () {
                      selectedScreen = true;
                      currentque = 0;
                      selectedans = -1;
                      correctans = 0;

                      setState(() {});
                    },
                    child: const Text(
                      "Restart  Quiz",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
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
