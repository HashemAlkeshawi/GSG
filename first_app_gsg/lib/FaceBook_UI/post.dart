import 'package:first_app_gsg/FaceBook_UI/data/data.dart';
import 'package:first_app_gsg/FaceBook_UI/postRequist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class postCreation extends StatelessWidget {
  postRequist? post;
  postCreation(postRequist post) {
    this.post = post;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      margin: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            horizontalTitleGap: 4,
            leading: CircleAvatar(
              //from list
              backgroundImage: NetworkImage(post!.u!.image ?? ""),
            ),
            title: SizedBox(
              child: Row(
                children: [
                  Text(
                    //from list
                    post!.u!.name ?? "",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    // from list
                    "Added a photo",
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
            subtitle: Text(
              "3 mins ago",
              style: TextStyle(height: 1.5),
            ),
            trailing: InkWell(
              child: Icon(Icons.more_horiz),
              onTap: () {
                print("more about post");
              },
            ),
          ),
          Text(post!.p!.content ?? ''),
          Container(
            height: 200,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    // from list
                    image: NetworkImage(post!.p!.image!),
                    fit: BoxFit.cover)),
          ),
          Row(
            children: [
              Icon(
                Icons.recommend,
                color: Colors.blue,
              ),
              InkWell(
                onTap: () {
                  print("Reactions");
                },
                child: Text(
                  "  ${post!.p!.noLikes ?? ''}",
                  style: TextStyle(fontSize: 10),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  print("Commints");
                },
                child: Text(
                  "73 commints",
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  print("Liked the post");
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.thumb_up_alt_outlined,
                    ),
                    Text(
                      "  Like",
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  print("Liked the post");
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.chat_bubble_outline,
                    ),
                    Text(
                      "  Commint",
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
