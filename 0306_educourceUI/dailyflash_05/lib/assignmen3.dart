import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://media.licdn.com/dms/image/C5603AQHEQd1DgWnlAw/profile-displayphoto-shrink_200_200/0/1659762950142?e=2147483647&v=beta&t=87Y9bnXNSmN66ZFJKvPBb1CZbpNB0GnlJPB6CRa4F2Y",
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(10, 10),
                    blurRadius: 10,
                  ),
                ],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                border: Border.all(),
                color: Colors.amber,
              ),
              child: const Text(
                "Name : Allhad Jiddewar",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
