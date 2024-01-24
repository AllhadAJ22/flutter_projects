import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});
  @override
  State<Assignment> createState() => _Assignment6State();
}

class _Assignment6State extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "Netflix",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: const Text(
                  " Movies",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx2dTSv0eYbgDLJHmhxhA95crZEaILAdBhJw&usqp=CAU"),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyv5Khhc5Jbk8L1lcxWHmhGekhMKxSPFiGosS5DtQjH0-1qceuoIO0F2GdZtSMKHxihWo&usqp=CAU"),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKcFejEFC7G1V12QUREZMJpqXnklEuYJ_rENrbq8VflFlm2yN_arT9VstBBrzYVTsUq54&usqp=CAU"),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKoH9LalgYDP4dmEP0nDIrk3SQaPW_dvA1HrSHlk6IzqfiSp3Ay8yBzJNdYeG1Sj5aN9c&usqp=CAU"),
                      ),
                    ],
                  )),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: const Text(
                  " WEB SERIES",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18),
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.network(
                          "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                          width: 150,
                          height: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.network(
                            "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                            width: 150,
                            height: 200,
                            fit: BoxFit.fill),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.network(
                            "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                            width: 150,
                            height: 200,
                            fit: BoxFit.fill),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF63u3v4EtuG6MxFAwPFPLpdFlgGUN6HCXdw&usqp=CAU",
                            width: 150,
                            height: 200,
                            fit: BoxFit.fill),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhnkyJUa48uwb75z5qQC-gaWPuY-uqc-p0gg&usqp=CAU",
                            width: 150,
                            height: 200,
                            fit: BoxFit.fill),
                      ),
                    ],
                  )),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: const Text(
                  " MOST POPULAR",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
                            width: 150,
                            height: 200,
                            fit: BoxFit.fill),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
                            width: 150,
                            height: 200,
                            fit: BoxFit.fill),
                      ),
                      Container(
                          padding: const EdgeInsets.only(right: 10),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Image.network(
                              "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
                              width: 150,
                              height: 200,
                              fit: BoxFit.fill)),
                    ],
                  )),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.games_outlined,
                ),
                label: "Games"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_outlined), label: "My Neflix"),
          ],
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.amber[800],
        ),
      ),
    );
  }
}
