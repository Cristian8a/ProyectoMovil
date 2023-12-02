import 'package:code_masters/auth/bloc/auth_bloc.dart';
import 'package:code_masters/get_started/login_home.dart';
import 'package:code_masters/home_quests/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:code_masters/providers/publication_providers.dart';
import 'package:flutter/material.dart';

void main() async {
  // initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc()..add(VerifyAuthEvent()),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
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
        home: HomePage(),
      ),
    );
  }
}
