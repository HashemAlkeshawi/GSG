import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
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
            Text("Third Screen"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop('this is the data returened');
              },
              child: const Text("Second Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
