import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget{

  const Assignment1({super.key});
  @override
  State<Assignment1> createState()=> _Assignment5State();
}
class _Assignment5State extends State<Assignment1>{
  
  bool _fav=false;
  bool _fav1=false;
  bool _fav2=false;

  bool _book1 = false;
  bool _book2 = false;
  bool _book3  = false;


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        title:const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color:Colors.black,
            fontSize: 30
          ),
          ),
          actions: const [
            Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          )
          ],
        ),
        // body: ListView(   //list view to adjust the images, list view is bydefault scroll
        //                   //listview used to remove overflow error
        //   children: [
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSnfBD8oiQixFsc59ccAI4fSbIBvvTjUEZuw&usqp=CAU",
        //         width: double.infinity,
        //         ),
        //         Row(
        //           children: [
        //             IconButton(
        //               onPressed: (){},
        //               icon: const Icon(
        //                 Icons.favorite_outline_outlined,
        //               ),
        //               ),
        //             IconButton(
        //               onPressed: (){},
        //                icon: const Icon(
        //               Icons.comment_outlined,
        //             ),
        //             ),
        //             IconButton(
        //               onPressed: (){},
        //                icon: const Icon(
        //               Icons.send,
        //             ),
        //           ), 
        //           ],
        //         )
        //       ],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWmUOvofdKUdxOfLjwXsJiJYHt-yU0XFifxQ&usqp=CAU",
        //         width: double.infinity,
        //         ),
        //         Row(
        //           children: [
        //             IconButton(
        //               onPressed: (){},
        //               icon: const Icon(
        //                 Icons.favorite_outline_outlined,
        //               ),
        //               ),
        //             IconButton(
        //               onPressed: (){},
        //                icon: const Icon(
        //               Icons.comment_outlined,
        //             ),
        //             ),
        //             IconButton(
        //               onPressed: (){},
        //                icon: const Icon(
        //               Icons.send,
        //             ),
        //           ), 
        //           ],
        //         )
        //       ],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlCeVhPcF0B061dWx6Y2p6ZshztnAoVQI59g&usqp=CAU",
        //         width: double.infinity,
        //         ),
        //         Row(
        //           children: [
        //             IconButton(
        //               onPressed: (){},
        //               icon: const Icon(
        //                 Icons.favorite_outline_outlined,
        //               ),
        //               ),
        //             IconButton(
        //               onPressed: (){},
        //                icon: const Icon(
        //               Icons.comment_outlined,
        //             ),
        //             ),
        //             IconButton(
        //               onPressed: (){},
        //                icon: const Icon(
        //               Icons.send,
        //             ),
        //           ), 
        //           ],
        //         )
        //       ],
        //     )
        //   ],
        // ),
        body:SingleChildScrollView(                            //scroll view is used when there are multple widget are not fitting in screen and it showiing overflow error
          child:Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSnfBD8oiQixFsc59ccAI4fSbIBvvTjUEZuw&usqp=CAU",
                width: double.infinity,
                ),
                Row(                                       // take the row for like, comment, send,and bookmark
                  children: [
                    IconButton(
                      onPressed: (){
                        setState(() {
                          _fav=! _fav;                      //change the state when button in clicked
                        });
                      },
                      icon:  Icon(
                        _fav ? Icons.favorite : Icons.favorite_outline_outlined,  //used ternary operator to see the output
                        color: _fav?Colors.red:Colors.black,
                      ),
                      ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(
                      Icons.comment_outlined,
                    ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(
                      Icons.send,
                    ),
                  ), 
                  const Spacer(),  //this is used to place any item at the end of the row/cloumn
                                  //it automatically adjust according to the sixe of the screen
                  // const SizedBox(  //to give space in icons
                  //   width: 215,
                  // ),
                  IconButton(
                      onPressed: (){
                        setState(() {
                          _book1 = !_book1;
                        });
                      },
                      icon: Icon(
                      _book1 ? Icons.bookmark_rounded : Icons.bookmark_outline_outlined,
                    ),  
                  ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWmUOvofdKUdxOfLjwXsJiJYHt-yU0XFifxQ&usqp=CAU",
                width: double.infinity,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        setState(() {
                          _fav1 = !_fav1;
                        });
                      },
                      icon: Icon(
                        _fav1?Icons.favorite:Icons.favorite_outline_outlined,
                        color: _fav1?Colors.red:Colors.black,
                      ),
                      ),
                    IconButton(
                      onPressed: (){},
                       icon: const Icon(
                      Icons.comment_outlined,
                    ),
                    ),
                    IconButton(
                      onPressed: (){},
                       icon: const Icon(
                      Icons.send,
                    ),  
                  ),
                  
                  // const SizedBox(
                  //   width: 215,
                  // ),
                  const Spacer(), 
                  IconButton(
                      onPressed: (){
                        setState(() {
                          _book2 = !_book2;
                        });
                      },
                       icon:  Icon(
                      _book2 ? Icons.bookmark_rounded : Icons.bookmark_outline_outlined,
                    ),  
                  ), 
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlCeVhPcF0B061dWx6Y2p6ZshztnAoVQI59g&usqp=CAU",
                width: double.infinity,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        setState(() {
                          _fav2 = !_fav2;
                        });
                      },
                      icon: Icon(
                        _fav2 ? Icons.favorite:
                        Icons.favorite_outline_outlined,
                        color: _fav2?Colors.red:Colors.black,
                      ),
                      ),
                    IconButton(
                      onPressed: (){},
                       icon: const Icon(
                      Icons.comment_outlined,
                    ),
                    ),
                    IconButton(
                      onPressed: (){},
                       icon: const Icon(
                      Icons.send,
                    ),
                  ), 
                  // const SizedBox(
                  //   width: 215,
                  // ),
                  const Spacer(),
                  IconButton(
                      onPressed: (){
                        setState(() {
                          _book3 = !_book3;
                        });
                      },
                       icon: Icon(
                        _book3 ? Icons.bookmark_rounded : Icons.bookmark_outline_outlined,
                    ),  
                  ),
                  ],
                )
              ],
            )
          ]
        ),
      )
    );
  }
}