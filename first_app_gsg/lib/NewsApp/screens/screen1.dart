import 'package:first_app_gsg/NewsApp/Data/response.dart';
import 'package:first_app_gsg/NewsApp/wedgits/newsWedgit.dart';
import 'package:flutter/cupertino.dart';

class screen1 extends StatefulWidget {
  Function setLike;
  screen1(this.setLike);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return newsWedgit(
          newsList[index],
          widget.setLike,
        );
      }),
      itemCount: newsList.length,
    );
  }
}
