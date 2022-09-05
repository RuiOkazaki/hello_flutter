import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstPage'),
      ),
      body: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Go to SecondPage', style: TextStyle(fontSize: 18)),
              Icon(Icons.arrow_forward_ios, size: 24),
            ],
          )),
    );
  }
}
