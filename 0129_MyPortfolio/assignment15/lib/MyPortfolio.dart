import 'package:flutter/material.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  int _count = 0;
  void _increment() {
    setState(() {
      _count++;
    });
  }

  Widget name() => Container(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: const Text("Name : Allhad Vishwas Jiddewar"));

  Widget profile() => Container(
        height: 110,
        width: 110,
        margin: const EdgeInsets.only(top: 20, left: 70),
        child: Image.asset(
          "profile.jpg",
          fit: BoxFit.fill,
        ),
      );

  Widget college() => Container(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: const Text("College : SKNCOE PUNE"));

  Widget logo() => Container(
        height: 110,
        width: 110,
        margin: const EdgeInsets.only(top: 20, left: 70),
        child: Image.asset(
          "logo.jpg",
          fit: BoxFit.fill,
        ),
      );

  Widget company() => Container(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: const Text("DREAM COMPANY : "));

  Widget clogo() => Container(
        height: 110,
        width: 110,
        margin: const EdgeInsets.only(top: 20, left: 70),
        child: Image.asset(
          "clogo.jpg",
          fit: BoxFit.fill,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "Portfolio",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (_count >= 1) ? name() : Container(),
          (_count > 2) ? profile() : Container(),
          (_count >= 3) ? college() : Container(),
          (_count >= 4) ? logo() : Container(),
          (_count >= 5) ? company() : Container(),
          (_count >= 6) ? clogo() : Container(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Text("Next"),
      ),
    );
  }
}
