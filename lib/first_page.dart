import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstPage'),
      ),
      body: Column(
        children: [
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            icon: const Icon(Icons.arrow_forward_ios, size: 24),
            label:
                const Text('Go to SecondPage', style: TextStyle(fontSize: 18)),
          ),
          TextButton(
              onPressed: () => Navigator.pushNamed(context, '/user_list'),
              child: const Text("Go to UserListPage"))
        ],
      ),
    );
  }
}
