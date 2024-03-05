import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController userName = TextEditingController();
  TextEditingController passWord = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: const Text("Login Page"),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
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
                print("username");
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
              obscureText: true,
              obscuringCharacter: "@",
              controller: passWord,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye_outlined),
                ),
                hintText: "Enter your PassWord ?",
                label: const Text("Password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              validator: (value) {
                print("password");
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
                if (validate) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("LOGIN SUCCESSFUL"),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("LOGIN FAAILED"),
                    ),
                  );
                }
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue),
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
}
