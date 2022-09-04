import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  // stateを生成し，_MyHomePageStateへ渡している？
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _counter2 = 1;

  // 関数を宣言
  void _incrementCounter() {
    // _counterのsetterで値をincrementしている
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _doubleCounter() {
    setState(() {
      _counter2 *= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    // レイアウトを構築するためのwidget（Scaffold）
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_counter.toString()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: _incrementCounter,
                    child: const Text('increment')),
                TextButton(
                    onPressed: _decrementCounter,
                    child: const Text('decrement')),
              ],
            ),
            Text(_counter2.toString()),
            TextButton(
              onPressed: _doubleCounter,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              child:
                  const Text('double', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
