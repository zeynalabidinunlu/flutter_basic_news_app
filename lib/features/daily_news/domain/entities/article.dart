import 'package:equatable/equatable.dart';

class ArticleEntity extends Equatable {
  final int? id;
  final String? title;
  final String? author;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  const ArticleEntity(
      {this.id,
      this.title,
      this.author,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});
  @override
  List<Object?> get props =>
      [id, title, author, description, url, urlToImage, publishedAt, content];
}
