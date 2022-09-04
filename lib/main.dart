import 'package:flutter/material.dart';
import 'package:sample_app/my_home_page.dart';
import 'package:sample_app/text_field_page.dart';

void main() {
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
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const TextFieldPage(),
    );
  }
}
