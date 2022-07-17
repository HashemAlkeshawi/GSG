import 'package:flutter/material.dart';

class Second_Screen extends StatelessWidget {
  static const String SecondScreenName = 'Second_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Second Screen"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop('this is the data returened');
              },
              child: const Text("First Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
