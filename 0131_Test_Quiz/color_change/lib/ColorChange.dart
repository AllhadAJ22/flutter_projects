import 'package:flutter/Material.dart';

class ColorChange extends StatefulWidget {
  const ColorChange({super.key});

  @override
  State<ColorChange> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ColorChange> {
  int _qcount = 1;
  List l1 = [["What is main()","1 function","2 class","3 Widget","4 object1",1],["What is runapp()","1 function","2 class","3 Widget","4 object2",1],["What is StatefulWidget","1 function","2 class","3 Widget","4 object3",2],["What is MaterialApp","1 function","2 class","3 Widget","4 object4",2]];
  
  // String abc = l1[0];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Quiz",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:Container(
        margin: const EdgeInsets.only(top: 20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Question $_qcount/10"),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Question $_qcount :"),
                Text("${l1[_qcount-1][0]}")
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(double.maxFinite, 30),
                      ),
                      child: Text("${l1[_qcount-1][1]}")),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.maxFinite, 30),
                    ),
                    child: Text("${l1[_qcount-1][2]}"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(double.maxFinite, 30),
                      ),
                      child:  Text("${l1[_qcount-1][3]}")),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(double.maxFinite, 30),
                        // backgroundColor: ,
                      ),
                      child: Text("${l1[_qcount-1][4]}")),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_qcount < 10) {
            setState(() {
              _qcount++;
            });
          }
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
