import 'package:first_app_gsg/Navigation/Second_Screen.dart';
import 'package:flutter/material.dart';

class First_Screen extends StatelessWidget {
  static const String FirstScreenName = 'First_Screen';
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("First Screen"),
              ElevatedButton(
                onPressed: () async {
                  dynamic x = await Navigator.of(context)
                      .pushNamed(Second_Screen.SecondScreenName);

                  print(x);
                },
                child: const Text("Second Screen"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
