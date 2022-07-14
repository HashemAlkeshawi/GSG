import 'dart:math';

import 'package:first_app_gsg/NewsApp/Data/NewsClass.dart';
import 'package:first_app_gsg/NewsApp/Data/response.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class newsWedgit extends StatefulWidget {
  Function setLike;

  news_model newsItem;
  newsWedgit(this.newsItem, this.setLike);

  @override
  State<newsWedgit> createState() => _newsWedgitState();
}

class _newsWedgitState extends State<newsWedgit> {
  Future<void> _launchInBrowser() async {
    // launchUrl(Uri.parse('sms:0592019756'));
    Uri.parse(widget.newsItem.url ?? "https://hashemalkeshawi.github.io/");
  }

  int random = Random().nextInt(100);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchInBrowser();
        print("hello world");
      },
      child: Container(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              height: 100,
              width: 100,
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: widget.newsItem.urlToImage!,
                errorWidget: (context, String, dynamic) {
                  return Image.asset("assets/images/flutter.png");
                  // return Text("No Image Found");
                },
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    widget.newsItem.title ?? "not found",
                    style: TextStyle(fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    widget.newsItem.description ?? "not found",
                    style: TextStyle(fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.newsItem.author ?? "not found",
                          style: TextStyle(fontSize: 8),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          widget.setLike(widget.newsItem);
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: widget.newsItem.isLiked
                              ? Colors.redAccent
                              : Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
