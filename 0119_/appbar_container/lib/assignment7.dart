import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          Image.network("https://images.unsplash.com/photo-1495344517868-8ebaf0a2044a?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c2VhcmNofGVufDB8fDB8fHww",
          width: 150,
          height: 300,
          fit: BoxFit.fill,),
          Image.network("https://rare-gallery.com/thumbnail/1384436-Guy-Watching-Sunset-Scenery-Silhouette-Digital.jpg",
          width: 150,
          height: 300,
          fit: BoxFit.fill,),
          Image.network("https://cdn.statusqueen.com/mobilewallpaper/thumbnail/moon_and_me-1012.jpg",
          width: 150,
          height: 300,
          fit: BoxFit.fill,),
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPZ0SkxXFULJv8JuldLBVa0SJFhggwhtksLK3pD_fIdQZptHpkqMKo-M9P3MS6m7v6gwI&usqp=CAU",
          width: 150,
          height: 300,
          fit: BoxFit.fill,),
          Image.network("https://media.istockphoto.com/id/1182647541/photo/wonders-of-the-night-sky.jpg?s=612x612&w=0&k=20&c=INNH-3NsVMGIsly8_KUeqjh1qjFzdxPUzmuQIGETVxQ=",
          width: 150,
          height: 300,
          fit: BoxFit.fill,),
        ]),
      )),
    );
  }
}
