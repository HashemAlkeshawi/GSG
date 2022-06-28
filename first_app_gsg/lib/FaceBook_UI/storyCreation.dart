import 'package:first_app_gsg/FaceBook_UI/data/data.dart';
import 'package:first_app_gsg/FaceBook_UI/postRequist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class storyCreation extends StatelessWidget {
  storyRequist? story;
  storyCreation(storyRequist story) {
    this.story = story;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              print("Open Story!");
            },
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 10),
              height: 175,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: NetworkImage(story!.s!.image!),
                      fit: BoxFit.cover)),
              child: Text(
                story!.u!.name!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  shadows: [
                    Shadow(color: Colors.black, blurRadius: 5),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Container(
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                border: Border.all(
                  color: Colors.white,
                  width: 2.5,
                ),
              ),
              child: InkWell(
                onTap: () {
                  print("Open Profile!");
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                    story!.u!.image!,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
