import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("FLAG"),
            backgroundColor: Colors.blue,
          ),
          body: Container(
            color: Colors.blue[400],
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 400,
                            width: 8,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 200,
                            color: Colors.orange,
                          ),
                          Container(
                            height: 50,
                            width: 200,
                            color: Colors.white,
                            child: Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                    "https://media.istockphoto.com/id/1140581548/vector/black-ashoka-chakra-symbol-of-national-flag-of-the-republic-of-india-isolated-on-white.jpg?s=612x612&w=0&k=20&c=kcPU7WbJ5Gl2DC8R_YIIFxnfuTz1m60hgUdjEU_NR0Y=")
                              ],
                            )
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 200,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 400,
                  height: 25,
                  color: Colors.black,
                  
                )
              ],
            ),
          )),
    );
  }
}
