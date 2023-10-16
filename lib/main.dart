import 'package:flutter/material.dart';
import 'package:flutter_basic_news_app/config/theme/app_themes.dart';
import 'package:flutter_basic_news_app/features/daily_news/presentation/bloc/article/remote/bloc/remote_article_bloc.dart';
import 'package:flutter_basic_news_app/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:flutter_basic_news_app/features/daily_news/presentation/widgets/article_tile.dart';
import 'package:flutter_basic_news_app/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticleBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
        theme: theme(),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const Scaffold(
          body: DailyNews()
        ),
      ),
    );
  }
}
