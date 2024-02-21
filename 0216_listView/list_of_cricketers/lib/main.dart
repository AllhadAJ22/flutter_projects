import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CricketerList(),
    );
  }
}

class CricketerList extends StatefulWidget {
  const CricketerList({super.key});

  @override
  State createState() => _CriccketerListState();
}

class _CriccketerListState extends State<CricketerList> {
  int count = 0;
  List cicketers = [
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMLiEjfLMzOVXEm087UF_MUGzItzgshd4N8w&usqp=CAU",
      "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/319900/319946.png",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfd8KX0XTnJa-RmqJq8T86EiHiHUSc3cLiMA&usqp=CAU"
    ],
    [
      "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_800,q_50/lsci/db/PICTURES/CMS/372600/372600.jpg",
      "data:image/jpeg;base64,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",
      "https://img1.hscicdn.com/image/upload/f_auto/lsci/db/PICTURES/CMS/367100/367160.jpg"
    ],
    [
      "https://crictoday.com/wp-content/uploads/2023/02/Untitled-design-60.jpg",
      "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202312/indias-virat-kohli-in-action-in-the-boxing-day-test-vs-south-africa-pti-285920159-16x9_0.jpg?VersionId=SGucbY_h3PFVxVgBpQjKklnB1NCbO_2S&size=690:388",
      "https://feeds.abplive.com/onecms/images/uploaded-images/2022/01/05/c43e18f62ec899de44ea2ca6e5072817_original.jpg"
    ]
  ];
  List format = [ "T20", "Text","One Day"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Cricketers List"),
      ),
      body: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Container(
            height: 50,
            width: 50,
            child: Column(children: [
              const Text(
                  "----------------------------------------------------------"),
              Text("Format : ${format[index]}")
            ]),
          );
        },
        itemCount: cicketers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: cicketers[index].length,
            itemBuilder: (BuildContext context, int index1) {
              count++;
              return (count == 1)
                  ? Container(
                      height: 300,
                      width: 300,
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: [Text("Format : ${format[2]}"),
                          Image.network(cicketers[index][index1]),
                        ],
                      ),
                    )
                  : Container(
                      height: 300,
                      width: 300,
                      margin: const EdgeInsets.all(10),
                      child: Image.network(cicketers[index][index1]),
                    );
            },
          );
        },
      ),
    );
  }
}
