import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('层叠布局-Stack'),
      ),
      body: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center, // 设置子元素的显示位置
      children: [
        Container(
          height: 400,
          width: 300,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width: 150,
          color: Colors.yellow,
        ),
        const Text('你好 Flutter'),
      ],
    );
  }
}
