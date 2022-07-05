import 'package:flutter/material.dart';

class InstagramUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = "likes";
    return Scaffold(
      appBar: AppBar(),
      //   backgroundColor: Colors.white,
      // ),
      body: Column(children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/me.png"),
              ),
            ),
            const Text(
              "hashemalkeshawi",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
        SizedBox(
          height: 360,
          child: Image.asset(
            "assets/images/me.png",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(12),
          child: Row(children: [
            Container(
              width: 25,
              margin: EdgeInsets.symmetric(horizontal: 8),
              // child: Image.asset("assets/icons/heart.png"),
              child: Icon(
                Icons.favorite_border,
                size: 30,
              ),
            ),
            Container(
              width: 25,
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Image.asset("assets/icons/chat-bubble.png"),
            ),
            Container(
              width: 25,
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Image.asset("assets/icons/right-arrow.png"),
            ),
            Spacer(),
            Container(
              width: 25,
              // margin: EdgeInsets.only(left: 180),
              child: Image.asset("assets/icons/save-instagram.png"),
            )
          ]),
        ),
        const Divider(
          height: 2,
          color: Colors.grey,
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15),
              height: 30,
              width: 25,
              child: Image.asset("assets/icons/heart-colored.png"),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: const Text("128"),
            ),
            Text(data),
          ],
        ),
      ]),
    );
  }
}
