import 'package:flutter/material.dart';
import 'package:sample_app/first_page.dart';
import 'package:sample_app/second_page.dart';
import 'package:sample_app/user_list_page.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: '.env.development');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // darkThemeを宣言
    final darkTheme = ThemeData.from(
        colorScheme: const ColorScheme.dark(primary: Colors.green));
    // materialappでマテリアルUIを使用できるproviderを使用
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      // darkThemeを先程宣言したdarkThemeにする
      darkTheme: darkTheme,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const FirstPage(),
        '/second': (BuildContext context) => const SecondPage(),
        '/user_list': (BuildContext context) => const UserListPage(),
      },
    );
  }
}
