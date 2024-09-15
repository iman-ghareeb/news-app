import 'package:newsapp/api/models/source_model.dart';

class ArticleModel{
String? title;
SourceModel? source;
String? urlToImage;
String? publishedAt;
String? author;

ArticleModel.fromJson(Map<String,dynamic> json){
  title = json['title'];
  urlToImage = json['urlToImage'];
  publishedAt = json['publishedAt'];
  author = json['author'];

  source = SourceModel.fromJson(json['source']);
}
}

