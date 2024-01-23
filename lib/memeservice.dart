import 'dart:io';
import 'package:myapp/meme.dart';
import 'package:http/http.dart' as http;

class MemeService{
  static const _url = 'https://meme-api.com/gimme';
  static Future<Meme> getMeme() async {
    final response = await http.get(Uri.parse(_url));
    if (response.statusCode == 200){
      return Meme.fromJson(response.body);    
    }
    throw const HttpException('error while fatching memes for you');
  }
}