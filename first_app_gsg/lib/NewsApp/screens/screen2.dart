import 'package:first_app_gsg/NewsApp/Data/NewsClass.dart';
import 'package:flutter/cupertino.dart';

import '../Data/response.dart';
import '../wedgits/newsWedgit.dart';

class screen2 extends StatelessWidget {
  Function setLike;
  screen2(this.setLike);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsList.where((news_model) {
        return news_model.isLiked;
      }).length,
      itemBuilder: ((context, index) {
        return newsWedgit(
            newsList.where((element) => element.isLiked).toList()[index],
            setLike);
      }),
    );
  }
}
