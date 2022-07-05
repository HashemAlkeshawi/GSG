class news_model {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? content;
  bool isLiked = true;

  news_model.fromJson(Map<String, dynamic> map) {
    source = Source.fromJson(map['source']);
    author = map['author'];
    title = map['title'];
    description = map['description'];
    url = map['url'];
    urlToImage = map['urlToImage'];
    content = map['content'];
  }
}

class Source {
  String? id;
  String? name;

  Source.fromJson(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
  }
}
