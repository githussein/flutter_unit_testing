import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'news_page.dart';
import 'new_change_notifier.dart';
import 'news_service.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Unit Testing',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: ChangeNotifierProvider(
          create: (_) => NewsChangeNotifier(NewsService()),
          child: const NewsPage(),
        ));
  }
}
