import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:unit_testing/article.dart';
import 'package:unit_testing/new_change_notifier.dart';
import 'package:unit_testing/news_service.dart';

class BadMockNewsService implements NewsService {
  bool getArticlesCalled = false;

  @override
  Future<List<Article>> getArticles() async {
    getArticlesCalled = true;
    return [
      Article(title: 'Test 1', content: 'Test 1 content'),
      Article(title: 'Test 2', content: 'Test 2 content'),
      Article(title: 'Test 3', content: 'Test 3 content'),
    ];
  }
}

class MockNewsService extends Mock implements NewsService {}

void main() {
  late NewsChangeNotifier sut; //system under test
  late MockNewsService mockNewsService;

//runs before every test
  setUp(() {
    mockNewsService = MockNewsService();
    sut = NewsChangeNotifier(mockNewsService);
  });

  test(
    'initial values are correct',
    () {
      expect(sut.articles, []);
      expect(sut.isLoading, false);
    },
  );

  group('getArticlea', () {
    test('get articles using the NewsServices', () async {
      when(() => mockNewsService.getArticles()).thenAnswer((_) async => []);
      await sut.getArticles();
      verify(() => mockNewsService.getArticles()).called(1);
    });
  });
}
