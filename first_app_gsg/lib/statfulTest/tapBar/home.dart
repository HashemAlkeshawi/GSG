import 'package:first_app_gsg/statfulTest/tapBar/screen1.dart';
import 'package:first_app_gsg/statfulTest/tapBar/screen2.dart';
import 'package:first_app_gsg/statfulTest/tapBar/screen3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
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
