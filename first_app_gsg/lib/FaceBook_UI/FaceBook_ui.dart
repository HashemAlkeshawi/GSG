import 'package:flutter/material.dart';

class FacebookUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Add Post!");
        },
        backgroundColor: Color(0xcc3c5a99),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              print("Add Photo!");
            },
            icon: Icon(
              Icons.photo_camera,
              color: Colors.grey[800],
              size: 35,
            )),
        title: Container(
          // padding: EdgeInsets.all(10),
          width: 220,
          height: 45,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 231, 231, 231),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              )),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Color.fromARGB(255, 99, 99, 99),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
              iconSize: 40,
              color: Colors.white,
              onPressed: () {
                print("Open Messenger");
              },
              icon: Image.asset(
                "assets/icons/messenger.png",
              ))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Stories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      print("see Archive");
                    },
                    child: Row(
                      children: [
                        Text("See Archive ",
                            style: TextStyle(fontWeight: FontWeight.w300)),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey[600],
                          size: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                print("Open Story!");
                              },
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                padding: EdgeInsets.only(bottom: 10),
                                height: 175,
                                width: 130,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/JustMe.jpeg"))),
                                child: Text(
                                  "hashem alkeshawi",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black, blurRadius: 5),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional.topStart,
                              child: Container(
                                margin: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.5,
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    print("Open Profile!");
                                  },
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage(
                                      "assets/images/me.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                print("Open Story!");
                              },
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                padding: EdgeInsets.only(bottom: 10),
                                height: 175,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/JustMe.jpeg"))),
                                child: Text(
                                  "hashem alkeshawi",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black, blurRadius: 5),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional.topStart,
                              child: Container(
                                margin: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.5,
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    print("Open Profile!");
                                  },
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage(
                                      "assets/images/me.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                print("Open Story!");
                              },
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                padding: EdgeInsets.only(bottom: 10),
                                height: 175,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/JustMe.jpeg"))),
                                child: Text(
                                  "hashem alkeshawi",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black, blurRadius: 5),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional.topStart,
                              child: Container(
                                margin: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.5,
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    print("Open Profile!");
                                  },
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage(
                                      "assets/images/me.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                print("Open Story!");
                              },
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                padding: EdgeInsets.only(bottom: 10),
                                height: 175,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/JustMe.jpeg"))),
                                child: Text(
                                  "hashem alkeshawi",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black, blurRadius: 5),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional.topStart,
                              child: Container(
                                margin: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.5,
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    print("Open Profile!");
                                  },
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage(
                                      "assets/images/me.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                print("Open Story!");
                              },
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                padding: EdgeInsets.only(bottom: 10),
                                height: 175,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/JustMe.jpeg"))),
                                child: Text(
                                  "hashem alkeshawi",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black, blurRadius: 5),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional.topStart,
                              child: Container(
                                margin: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.5,
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    print("Open Profile!");
                                  },
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage(
                                      "assets/images/me.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      horizontalTitleGap: 4,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/me.png"),
                      ),
                      title: SizedBox(
                        child: Row(
                          children: [
                            Text(
                              "Hashem Alkeshawi",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " updated his cover photo",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        "3 mins ago",
                        style: TextStyle(height: 1.5),
                      ),
                      trailing: IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(Icons.more_horiz),
                        onPressed: () {
                          print("more about post");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  width: 300,
//                 child: Row(
//                   children: [
//                     const CircleAvatar(
//                       backgroundImage: AssetImage("assets/images/me.png"),
//                       radius: 12,
//                     ),
//                     Row(children: [
//                       Text(
//                         "hashem Alkeshawi ",
//                         style: TextStyle(fontSize: 10),
//                       ),
//                       Text(
//                         "updated his profile image",
//                         style: TextStyle(fontSize: 8),
//                       ),
//                       Spacer(),
//                       IconButton(
//                         icon: Icon(Icons.more_horiz),
//                         onPressed: () {
//                           print("Post MORE!");
//                         },
//                       ),
//                     ]),
//                     Row(
//                       children: [
//                         Text("3"),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Text("minutes"),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Text("ago"),
//                       ],
//                     ),
//                   ],
//                 ),

// actions: [
//           Container(
//             width: 300,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(10),
//                   width: 100,
//                   height: 40,
//                   margin: EdgeInsets.only(bottom: 15),
//                   decoration: BoxDecoration(
//                       border: Border.all(
//                         color: Colors.grey,
//                         width: 1,
//                       ),
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(50),
//                       )),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       prefixIcon: Icon(
//                         Icons.search,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Spacer(),
//                 Icon(Icons.message),
//               ],
//             ),
//           )
//         ],

//
