import 'dart:math';

import 'package:first_app_gsg/NewsApp/Data/NewsClass.dart';
import 'package:first_app_gsg/NewsApp/Data/response.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newsWedgit extends StatelessWidget {
  int random = Random().nextInt(100);
  news_model newsItem;
  newsWedgit(this.newsItem);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
            height: 100,
            width: 100,
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: newsItem.urlToImage ?? "",
              errorWidget: (context, String, dynamic) {
                return Image.network("https://picsum.photos/100/100?$random");
                // return Text("No Image Found");
              },
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  newsItem.title ?? "not found",
                  style: TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  newsItem.description ?? "not found",
                  style: TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        newsItem.author ?? "not found",
                        style: TextStyle(fontSize: 8),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color:
                            newsItem.isLiked ? Colors.redAccent : Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
