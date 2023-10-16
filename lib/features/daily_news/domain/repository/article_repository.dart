

import 'package:flutter_basic_news_app/core/resources/data_state.dart';
import 'package:flutter_basic_news_app/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
  
    // Database methods
  Future < List < ArticleEntity >> getSavedArticles();

  Future < void > saveArticle(ArticleEntity article);

  Future < void > removeArticle(ArticleEntity article);
}