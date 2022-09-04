import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  // State<TextFieldPage> createState() => _TextFieldState();
  State<StatefulWidget> createState() {
    return _TextFieldState();
  }
}

class _TextFieldState extends State<TextFieldPage> {
  String _inputText = "";
  String _showText = "";

  void _inputHandler(String value) {
    _inputText = value;
  }

  void _toReflect() {
    setState(() {
      _showText = _inputText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TextField'),
        ),
        body: Column(
          children: [
            Text(_showText),
            TextField(onChanged: ((value) {
              _inputHandler(value);
            })),
            IconButton(onPressed: _toReflect, icon: const Icon(Icons.sync))
          ],
        ));
  }
}
