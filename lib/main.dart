import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // 関数を宣言
  void _incrementCounter() {
    // _counterのsetterで値をincrementしている
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // レイアウトを構築するためのwidget（Scaffold）
    final row = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        SizedBox(width: 60, height: 60, child: ColoredBox(color: Colors.teal)),
        SizedBox(width: 60, height: 60, child: ColoredBox(color: Colors.teal)),
        SizedBox(width: 60, height: 60, child: ColoredBox(color: Colors.teal)),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
                height: 60, width: 60, child: ColoredBox(color: Colors.green)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("ほげり"),
                Text("ふがり"),
              ],
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [row, row, row],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
