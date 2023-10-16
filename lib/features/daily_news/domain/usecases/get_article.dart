import 'package:flutter_basic_news_app/core/resources/data_state.dart';
import 'package:flutter_basic_news_app/core/usecases/usecase.dart';
import 'package:flutter_basic_news_app/features/daily_news/domain/entities/article.dart';
import 'package:flutter_basic_news_app/features/daily_news/domain/repository/article_repository.dart';

class GetArticleUseCases
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;
  GetArticleUseCases(this._articleRepository);
  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}
