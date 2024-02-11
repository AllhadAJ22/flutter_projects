import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
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
  bool screen1 = true;
  int questionindex = 0;
  int selectedAnswer = -1;
  int correctanswerColunt = 0;

  MaterialStateProperty<Color?> butColor(int butindex) {
    if (selectedAnswer != -1) {
      if (butindex == allQuestion[questionindex]["answer"]) {
        return const MaterialStatePropertyAll(Colors.green);
      }
      if (selectedAnswer == butindex) {
        if (butindex == allQuestion[questionindex]["answer"]) {
          return const MaterialStatePropertyAll(Colors.green);
        }
        return const MaterialStatePropertyAll(Colors.red);
      }
    }
    return const MaterialStatePropertyAll(null);
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
              style: ButtonStyle(backgroundColor: butColor(0),fixedSize: const MaterialStatePropertyAll(Size(400, 50))),
              onPressed: () {
                if (selectedAnswer == -1) {
                  selectedAnswer = 0;
                  setState(() {});
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
              style: ButtonStyle(backgroundColor: butColor(1),fixedSize: const MaterialStatePropertyAll(Size(400, 50))),
              onPressed: () {
                if (selectedAnswer == -1) {
                  selectedAnswer = 1;
                  setState(() {});
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
              style: ButtonStyle(backgroundColor: butColor(2),fixedSize: const MaterialStatePropertyAll(Size(400, 50))),
              onPressed: () {
                if (selectedAnswer == -1) {
                  selectedAnswer = 2;
                  setState(() {});
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
              style: ButtonStyle(backgroundColor: butColor(3),fixedSize: const MaterialStatePropertyAll(Size(400, 50))),
              onPressed: () {
                if (selectedAnswer == -1) {
                  selectedAnswer = 3;
                  setState(() {});
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
            if (questionindex == allQuestion.length - 1) {
              screen1 = false;
              setState(() {});
            }

            if (selectedAnswer != -1 &&
                questionindex < allQuestion.length - 1) {
              if (selectedAnswer == allQuestion[questionindex]["answer"]) {
                correctanswerColunt++;
              }
              setState(() {
                questionindex++;
                selectedAnswer = -1;
              });
            }
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

              Image.network("data:image/jpeg;base64,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",
              width: 450,
              height: 200,),
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
                "Score : $correctanswerColunt/ ${allQuestion.length}",
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    screen1 = true;
                    questionindex= 0;
                    correctanswerColunt = 0;
                    selectedAnswer = -1;
                    setState(() {});
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
