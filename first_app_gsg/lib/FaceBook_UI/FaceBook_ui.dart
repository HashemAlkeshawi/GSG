import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacebookUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xcc3c5a99),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 1.0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.photo_camera,
          color: Colors.grey[800],
        ),
        title: Container(
          // padding: EdgeInsets.all(10),
          width: 220,
          height: 45,
          margin: EdgeInsets.only(top: 8),
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
              onPressed: () {}, icon: Image.asset("assets/icons/messenger"))
        ],
      ),
    );
  }
}

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

// ListTile(
//         leading: const CircleAvatar(
//           backgroundImage: AssetImage("assets/images/me.png"),
//           radius: 12,
//         ),
//         title: Row(children: [
//           Text(
//             "hashem Alkeshawi",
//             style: TextStyle(fontSize: 10),
//           ),
//           SizedBox(width: 2),
//           Text(
//             "updated his profile image",
//             style: TextStyle(fontSize: 8),
//           ),
//           Spacer(),
//           IconButton(
//             icon: Icon(Icons.more_horiz),
//             onPressed: () {},
//           ),
//         ]),
//         subtitle: Row(
//           children: [
//             Text("3"),
//             SizedBox(
//               width: 4,
//             ),
//             Text("minutes"),
//             SizedBox(
//               width: 4,
//             ),
//             Text("ago"),
//           ],),