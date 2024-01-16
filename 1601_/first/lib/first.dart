import 'dart:math';
import 'package:flutter/material.dart';
class First extends StatefulWidget{
  const First({super.key});
  @override
  State<First> createState( ) => _FirstState();
}
class _FirstState extends State<First> {
  int _count = 0;
  int _count1 = 0;
  int _count2 = 0;

  final List<int> List1 = [101,121,823,153,145,1634];
  // ignore: non_constant_identifier_names
  void Palindron(){
    
    for (int i=0;i<List1.length;i++){
      int rev=0;
        int no=List1[i];
        while(no!=0){    
          rev= (rev*10)+(no%10);
          no = no ~/ 10; 
          if (rev==List1[i]) {
          _count++;
        }
        }      
      }
    setState(() {
      _count+0;
    });
  }
    void Amstrong(){
      for (int i=0;i<List1.length;i++){  
        int no = List1[i];
        int cube=0;
        int co=0;
        while(no>0){
          co++;
          no=no~/10;
        }
        no = List1[i];
        while (no!=0){
          int x=no%10;
          int y = (pow(x, co))as int;
          cube = cube + y;
          no = no ~/10;
        }
        if(cube==List1[i]){
            _count1++;
        }
      }
    setState(() {
    });
  }
    void Strong(){
      for (int i=0;i<List1.length;i++){  
        int no = List1[i];
        int fact=0;
        while (no!=0){
          int x=no%10;
          int fact1=1;
          while(x!=0){
            fact1 = fact1*x;
            x--;
          }
          fact = fact + fact1;
          no = no ~/10;
        }
        if(fact==List1[i]){
            _count2++;
        }
      }
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: Palindron,
               child: const Text("Calculate palindrom"),
            ),
            Text(
              "count of palindrom = $_count"
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: Amstrong,
               child: const Text("Calculate Amstrong"),
            ),
            Text(
              "count of Amstrong = $_count1"
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: Strong,
               child: const Text("Calculate Strong"),
            ),
            Text(
              "count Strong = $_count2"
            ),
          ],
        ),
      ),
    );
  }
}