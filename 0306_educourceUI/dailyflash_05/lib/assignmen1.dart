import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Profile Information"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://media.licdn.com/dms/image/C5603AQHEQd1DgWnlAw/profile-displayphoto-shrink_200_200/0/1659762950142?e=2147483647&v=beta&t=87Y9bnXNSmN66ZFJKvPBb1CZbpNB0GnlJPB6CRa4F2Y",
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Name : Allhad Jiddewar",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Phone Number : 9175130571",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
