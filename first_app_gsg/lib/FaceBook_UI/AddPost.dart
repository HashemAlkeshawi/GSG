import 'dart:io';

import 'package:first_app_gsg/FaceBook_UI/postRequist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import 'data/data.dart';

class addPost extends StatefulWidget {
  @override
  State<addPost> createState() => _addPostState();
}

class _addPostState extends State<addPost> {
  TextEditingController postController = TextEditingController();

  File? imageFile;
  createPost() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.camera);
    imageFile = File(image!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Post'),
      ),
      body: Container(
        height: height,
        margin: EdgeInsets.all(12),
        child: ListView(children: [
          InkWell(
            onTap: () {
              createPost();
            },
            child: Container(
                height: 250.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[400],
                ),
                child: Center(
                  child: imageFile == null
                      ? Icon(Icons.add)
                      : Image.file(
                          imageFile!,
                          fit: BoxFit.cover,
                        ),
                )),
          ),
          Container(
            padding: EdgeInsets.all(10.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.symmetric(vertical: 10.h),
            child: TextField(
              controller: postController,
              decoration: InputDecoration(
                  hintText: 'Post Content',
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Post post = Post(postController.text, imageFile, 0);
              User user = User("Just Me",
                  "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80");

              postRequistsList.add(postRequist(post, user));
              print(postController.text);
              postController.clear();
              Navigator.pop(context);
            },
            child: Text('Add Post'),
          ),
        ]),
      ),
    );
  }
}
