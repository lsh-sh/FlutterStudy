import 'package:flutter/material.dart';

class StackPositionedPage extends StatelessWidget {
  const StackPositionedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack和Positioned配合使用'),
      ),
      body: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      color: Colors.red,
      child: Stack( // Positioned在Stack里是相对于外部Container容器进行定位,如果没有容器是相对于屏幕来进行定位的
        children: [
          // 使用Positioned对元素进行定位
          Positioned(
            left: 10,
            bottom: 10,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          ),
          const Positioned(right: 0, top: 190, child: Text('你好 Flutter')),
        ],
      ),
    );
  }
}
