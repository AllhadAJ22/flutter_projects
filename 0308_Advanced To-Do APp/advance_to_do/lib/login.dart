import 'package:advance_to_do/advanceToDo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Map usersMap = {
    "Allhad": "Allhad123",
    "Sumant": "Sumant123",
  };
  bool passflag = true;
  TextEditingController userName = TextEditingController();
  TextEditingController passWord = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Scaffold screen() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          "To-Do App Login",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 200,
              child: Image.network(
                  "https://static.vecteezy.com/system/resources/previews/003/773/576/original/business-man-icon-free-vector.jpg"),
            ),
            TextFormField(
              controller: userName,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                hintText: "Enter your UserName ?",
                label: const Text("UserName"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              // keyboardType: TextInputType.emailAddress,
              validator: (value) {
                // print("username");
                if (value == null || value.isEmpty) {
                  return "please enter username";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: passflag,
              obscuringCharacter: "*",
              controller: passWord,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    passflag = !passflag;
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove_red_eye_outlined),
                ),
                hintText: "Enter your PassWord ?",
                label: const Text("Password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              validator: (value) {
                // print("password");
                if (value == null || value.isEmpty) {
                  return "please enter password";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                bool validate = _formkey.currentState!.validate();
                // print(userName.text);
                // print(passWord.text);
                // bool flag = true;

                if (validate) {
                  // print("object");
                  // print(usersMap.containsKey(userName.text));

                  if (usersMap.containsKey(userName.text)) {
                    if (usersMap[userName.text] == passWord.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("LOGIN SUCCESSFUL"),
                        ),
                      );
                      String name = userName.text;
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return TODOAppUI(name);
                      }));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Incorrect and password"),
                        ),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Invalid username and password"),
                      ),
                    );
                  }
                }
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
                fixedSize: MaterialStatePropertyAll(Size(300, 50)),
              ),
              child: const Text(
                "Submit",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return screen();
  }
}
