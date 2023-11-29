import 'package:code_masters/get_started/login_home.dart';
import 'package:code_masters/home_quests/home_page.dart';
import 'package:code_masters/home_quests/routes/ask_questions.dart';
import 'package:code_masters/home_quests/routes/post_comments.dart';
import 'package:code_masters/home_quests/routes/post_content.dart';
import 'package:provider/provider.dart';
import 'package:code_masters/providers/publication_providers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Code Masters',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.indigo,
          ),
        ),
        home: HomeQuest(),
      ),
    );
  }
}
