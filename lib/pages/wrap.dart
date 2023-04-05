import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wrap组件'),
        ),
        body: const MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Wrap(
        // 水平间距
        spacing: 10,
        // 垂直间距
        runSpacing: 10,
        children: [
          Button('第1集'),
          Button('第2集'),
          Button('第3集'),
          Button('第4集'),
          Button('第5集'),
          Button('第6集'),
          Button('第7集'),
          Button('第8集'),
          Button('第9集'),
          Button('第10集'),
          Button('第11集'),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  String text;

  Button(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.grey),
        ),
        child: Text(text));
  }
}
