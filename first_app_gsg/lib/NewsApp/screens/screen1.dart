import 'package:first_app_gsg/NewsApp/Data/response.dart';
import 'package:first_app_gsg/NewsApp/wedgits/newsWedgit.dart';
import 'package:flutter/cupertino.dart';

class screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return newsWedgit(newsList[index]);
      }),
      itemCount: newsList.length,
    );
  }
}
