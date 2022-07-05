import 'package:first_app_gsg/NewsApp/Data/NewsClass.dart';
import 'package:flutter/cupertino.dart';

import '../Data/response.dart';
import '../wedgits/newsWedgit.dart';

class screen2 extends StatefulWidget {
  Function setLike;
  screen2(this.setLike);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsList.where((news_model) {
        return news_model.isLiked;
      }).length,
      itemBuilder: ((context, index) {
        return newsWedgit(
            newsList.where((element) => element.isLiked).toList()[index],
            widget.setLike);
      }),
    );
  }
}
