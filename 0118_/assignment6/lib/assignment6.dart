import 'package:flutter/material.dart';

class Assignment6 extends StatefulWidget{
  const Assignment6({super.key});
  @override
  State<Assignment6> createState()=>_Assignment6State();
}

class _Assignment6State extends State<Assignment6>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title: const Text("Netflix"),backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15,),
              const Text(
                " Movies",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18
                  ),
                ),
                const SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      const SizedBox(width: 20,),
                      Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",width: 200,height: 
                      300,fit: BoxFit.fill,),
                      const SizedBox(width: 20,),
                      Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",width: 200,height: 
                      300,fit: BoxFit.fill,),
                      const SizedBox(width: 20,),
                      Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",width: 200,height: 
                      300,fit: BoxFit.fill,),
                    ],
                  )
              ),
              const SizedBox(height: 20,),
              const Text(
                " WEB SERIES",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18
                  ),
                ),
                const SizedBox(height: 10,),
                 SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      const SizedBox(width: 20,),
                      Image.network("https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                      width: 150,height: 200,fit: BoxFit.fill,),
                      const SizedBox(width: 20,),
                      Image.network("https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                      width: 150,height: 200,fit: BoxFit.fill),
                      const SizedBox(width: 20,),
                      Image.network("https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                      width: 150,height: 200,fit: BoxFit.fill),
                      const SizedBox(width: 20,),
                      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF63u3v4EtuG6MxFAwPFPLpdFlgGUN6HCXdw&usqp=CAU",
                      width: 150,height: 200,fit: BoxFit.fill),
                      const SizedBox(width: 20,),
                      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhnkyJUa48uwb75z5qQC-gaWPuY-uqc-p0gg&usqp=CAU",
                      width: 150,height: 200,fit: BoxFit.fill),
                    ],
                  )
              ),
              const SizedBox(height: 20,),
              const Text(
                " MOST POPULAR",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 10,),
                 SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      const SizedBox(width: 20,),
                      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",width: 150,height: 
                      200,fit: BoxFit.fill),
                      const SizedBox(width: 20,),
                      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",width: 150,height: 
                      200,fit: BoxFit.fill),
                      const SizedBox(width: 20,),
                      Image.network("https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",width: 150,height: 200,fit: BoxFit.fill),
                    ],
                  )
              ),
              const SizedBox(height: 20,)
            ],
          ),
        ),
    ),
  );
  }
}