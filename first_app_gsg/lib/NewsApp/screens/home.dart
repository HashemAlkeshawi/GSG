import 'package:first_app_gsg/NewsApp/Data/NewsClass.dart';
import 'package:first_app_gsg/NewsApp/screens/screen1.dart';
import 'package:first_app_gsg/NewsApp/screens/screen2.dart';
import 'package:first_app_gsg/NewsApp/screens/screen3.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  setLike(news_model n) {
    n.isLiked = !n.isLiked;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hot News!"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Faborite",
              ),
              Tab(
                text: "Profile",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [screen1(), screen2(), screen3()],
        ),
      ),
    );
  }
}
