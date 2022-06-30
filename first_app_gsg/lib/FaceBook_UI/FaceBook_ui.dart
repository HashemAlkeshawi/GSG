import 'package:first_app_gsg/FaceBook_UI/data/data.dart';
import 'package:first_app_gsg/FaceBook_UI/post.dart';
import 'package:first_app_gsg/FaceBook_UI/storyCreation.dart';
import 'package:flutter/material.dart';
import 'package:first_app_gsg/FaceBook_UI/postRequist.dart';

class FacebookUi extends StatelessWidget {
  // Orientation ori = M
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage(postsResponse[0]['user']['image']),
              ),
              accountName: Text("name"),
              accountEmail: Text("Email@email.me"),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings),
                  subtitle: Text("Open settings"),
                  trailing: Icon(Icons.arrow_right),
                ),
                ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.details),
                  subtitle: Text("Open About us"),
                  trailing: Icon(Icons.arrow_right),
                ),
                ListTile(
                  title: Text("Profile"),
                  leading: Icon(Icons.person),
                  subtitle: Text("Open Your Profile"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
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
      body: ListView(
        padding: EdgeInsets.all(8),
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
            height: MediaQuery.of(context).size.height / 3.2,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: storyRequistsList.length,
              itemBuilder: (context, count) {
                return storyCreation(storyRequistsList[count]);
              },
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: postRequistsList.length,
              itemBuilder: (contixt, index) {
                return postCreation(postRequistsList[index]);
              }),
        ],
      ),
    );
  }
}
