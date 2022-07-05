import 'package:flutter/material.dart';

class MyFirstUIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.network(
                    "https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI",
                    width: 100,
                    height: 100,
                  ),
                  Text("Image 1"),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    "https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI",
                    width: 100,
                    height: 100,
                  ),
                  Text("Image 2"),
                ],
              ),
            ],
          ),
          Divider(
            height: 15,
          ),
          Text(
            "My name is: Hashem",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
