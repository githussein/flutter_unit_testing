import 'package:flutter/material.dart';
import 'package:unit_testing/article.dart';
import 'package:unit_testing/news_service.dart';

class NewsChangeNotifier extends ChangeNotifier {
  final NewsService _newsService;

  NewsChangeNotifier(this._newsService);

  List<Article> _articles = [];

  List<Article> get articles => [..._articles];

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> getArticles() async {
    //implement fetching articles
  }
}