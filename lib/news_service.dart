import 'package:flutter_lorem/flutter_lorem.dart';
import 'article.dart';

class NewsService {
  final _articles = List.generate(
      10,
      (_) => Article(
            title: lorem(paragraphs: 1, words: 4),
            content: lorem(paragraphs: 6, words: 300),
          ));

  Future<List<Article>> getArticles() async {
    await Future.delayed(Duration(seconds: 2));
    return _articles;
  }
}
