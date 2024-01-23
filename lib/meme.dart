import 'dart:convert';
class Meme{
  final String title;
  final String url;
  final String postUrl;
  final String author;
  final List<dynamic> previews;

  Meme({required this.title, required this.url, required this.postUrl, required this.author, required this.previews});

  factory Meme.fromMap(Map<String,dynamic> map){
    return Meme(title: map['title']??'', url: map['url']??'', postUrl: map['postLink']??'', author: map['author']??'', previews: map['preview']); 
  }

  factory Meme.fromJson(String source) => Meme.fromMap(jsonDecode(source));
}