import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sample_app/second_page.dart';

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
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const SecondPage(),
              ),
            );
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
