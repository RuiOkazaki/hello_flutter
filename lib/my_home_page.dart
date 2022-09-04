import 'package:flutter/material.dart';

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
          crossAxisAlignment: CrossAxisAlignment.end,
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
            // Expanded()
            // shrinkWrap: true,
            SizedBox(
              width: 200,
              height: 200,
              child: GridView.count(crossAxisCount: 3, children: [
                for (var i = 0; i < 9; i++)
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ColoredBox(color: Colors.indigo),
                  )
              ]),
            ),
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
