import 'package:first_app_gsg/FaceBook_UI/FaceBook2_ui.dart';
import 'package:first_app_gsg/FaceBook_UI/FaceBook_ui.dart';
import 'package:first_app_gsg/instagramUI.dart';
import 'package:flutter/material.dart';
import 'package:first_app_gsg/statfulTest/statfulTest.dart';

class app extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TheApp();
  }
}

class TheApp extends State<app> {
  bool isDark = false;
  changeTheme(bool value) {
    isDark = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      // themeMode: ,
      debugShowCheckedModeBanner: false,
      home: Test(changeTheme),
      // home: FacebookUi(),
      // home: FaceBook2_ui(),
      // home: InstagramUi(),
    );
  }
}

void main() {
  runApp(app());

  //   MaterialApp(
  //     darkTheme: ThemeData(brightness: Brightness.dark),
  //     // themeMode: ,
  //     debugShowCheckedModeBanner: false,
  //     home: Test(),
  //     // home: FacebookUi(),
  //     // home: FaceBook2_ui(),
  //     // home: InstagramUi(),
  //   ),
  // );
}
