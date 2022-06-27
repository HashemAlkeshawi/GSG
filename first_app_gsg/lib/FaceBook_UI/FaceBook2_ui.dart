import 'package:flutter/material.dart';

class FaceBook2_ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 12),
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.thumb_up_outlined,
              color: Colors.grey[500],
              size: 35,
            ),
            Container(
              width: 270,
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
                  hintText: "  Add a Comment",
                  hintStyle: TextStyle(fontSize: 16),
                  border: InputBorder.none,
                  suffixIcon: Container(
                    margin: EdgeInsets.only(right: 12),
                    width: 60,
                    child: Row(children: [
                      InkWell(
                        child: Icon(
                          Icons.gif_box_outlined,
                          size: 30,
                        ),
                        onTap: () {
                          print("Add a GIF");
                        },
                      ),
                      Spacer(),
                      InkWell(
                        child: Icon(Icons.sentiment_satisfied_outlined),
                        onTap: () {
                          print("Add an Emoji");
                        },
                      )
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              print("Add Photo!");
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey[800],
              size: 25,
            )),
        titleSpacing: 0,
        title: Text(
          "feed",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                        const Text(
                            "Flutter is a great tool that can help us build great apps that works for both platforms iOS and Android, thank you Google!"),
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
                        Container(
                          height: 200,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/coder2.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 200,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/coder3.jpg"),
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
