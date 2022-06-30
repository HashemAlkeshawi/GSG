import 'package:first_app_gsg/FaceBook_UI/FaceBook2_ui.dart';
import 'package:first_app_gsg/FaceBook_UI/FaceBook_ui.dart';
import 'package:first_app_gsg/instagramUI.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FacebookUi(),
      title: "title",
      // home: FaceBook2_ui(),
      // home: InstagramUi(),
    ),
  );
}
