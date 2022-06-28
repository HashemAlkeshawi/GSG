class postRequist {
  Post? p;
  User? u;

  postRequist.fromJason(Map m) {
    p = Post.fromJason(m['post']);
    u = User.fromJason(m['user']);
  }
}

class Post {
  String? content;
  String? image;
  num? noLikes;

  Post.fromJason(Map m) {
    content = m['content'];
    image = m['image'];
    noLikes = m['noLikes'];
  }
}

class User {
  String? name;
  String? image;
  User.fromJason(Map m) {
    name = m['name'];
    image = m['image'];
  }
}

//// story requist class ===================///

class storyRequist {
  story? s;
  user? u;

  storyRequist.fromJason(Map m) {
    s = story.fromJason(m['story']);
    u = user.fromJason(m['user']);
  }
}

class story {
  String? image;

  story.fromJason(Map m) {
    image = m['image'];
  }
}

class user {
  String? name;
  String? image;
  user.fromJason(Map m) {
    name = m['name'];
    image = m['image'];
  }
}
