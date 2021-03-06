import 'package:easy_localization/easy_localization.dart';
import 'package:first_app_gsg/NewsApp/Data/NewsClass.dart';
import 'package:first_app_gsg/NewsApp/screens/screen1.dart';
import 'package:first_app_gsg/NewsApp/screens/screen2.dart';
import 'package:first_app_gsg/NewsApp/screens/screen3.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  setLike(news_model n) {
    n.isLiked = !n.isLiked;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('App Name').tr(),
            //  bottom: TabBar(
            //       tabs: [
            //         Tab(
            //           text: "Home",
            //         ),
            //         Tab(
            //           text: "Faborite",
            //         ),
            //         Tab(
            //           text: "Contact Us",
            //         ),
            //       ],
            //     ),
            actions: [
              IconButton(
                  onPressed: () {
                    if (context.locale.toString() == 'en') {
                      context.setLocale(Locale('ar'));
                    } else {
                      context.setLocale(Locale('en'));
                    }
                    setState(
                      () {},
                    );
                  },
                  icon: Icon(Icons.language))
            ],
          ),
          body: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Content'.tr(),
                  style: TextStyle(fontSize: 18.sp),
                ),
              ],
            ),
          )
          // TabBarView(
          // children: [screen1(setLike), screen2(setLike), screen3(setLike)],
          // ),
          ),
    );
  }
}
