import 'package:flutter/material.dart';
import 'article.dart';

class ArticlePage extends StatelessWidget {
  final Article article;
  const ArticlePage({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Full article')),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: mq.padding.top,
          bottom: mq.padding.bottom,
          left: 10,
          right: 10,
        ),
        child: Column(children: [
          Text(
            article.title,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            article.content,
            textAlign: TextAlign.center,
          ),
        ]),
      ),
    );
  }
}
