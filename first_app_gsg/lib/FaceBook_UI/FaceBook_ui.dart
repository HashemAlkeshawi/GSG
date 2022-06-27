import 'package:flutter/material.dart';

class FacebookUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        // padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
        margin: EdgeInsets.only(bottom: 12),
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.web,
              color: Colors.blue,
              size: 35,
            ),
            Icon(
              Icons.group_outlined,
              color: Colors.grey[600],
              size: 35,
            ),
            Icon(
              Icons.smart_display_outlined,
              color: Colors.grey[600],
              size: 35,
            ),
            Icon(
              Icons.notifications_outlined,
              color: Colors.grey[600],
              size: 35,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/me.png"),
            )
          ],
        ),
      ),
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
                color: Color.fromARGB(255, 205, 205, 205),
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
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
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
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
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
                          trailing: InkWell(
                            child: Icon(Icons.more_horiz),
                            onTap: () {
                              print("more about post");
                            },
                          ),
                        ),
                        Container(
                          height: 200,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/coder.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.recommend,
                              color: Colors.blue,
                            ),
                            InkWell(
                              onTap: () {
                                print("Reactions");
                              },
                              child: Text(
                                "  109",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                print("Commints");
                              },
                              child: Text(
                                "73 commints",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                print("Liked the post");
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.thumb_up_alt_outlined,
                                  ),
                                  Text(
                                    "  Like",
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                print("Liked the post");
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.chat_bubble_outline,
                                  ),
                                  Text(
                                    "  Commint",
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
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
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
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
                          trailing: InkWell(
                            child: Icon(Icons.more_horiz),
                            onTap: () {
                              print("more about post");
                            },
                          ),
                        ),
                        Container(
                          height: 200,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/coder.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.recommend,
                              color: Colors.blue,
                            ),
                            InkWell(
                              onTap: () {
                                print("Reactions");
                              },
                              child: Text(
                                "  109",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                print("Commints");
                              },
                              child: Text(
                                "73 commints",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                print("Liked the post");
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.thumb_up_alt_outlined,
                                  ),
                                  Text(
                                    "  Like",
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                print("Liked the post");
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.chat_bubble_outline,
                                  ),
                                  Text(
                                    "  Commint",
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
