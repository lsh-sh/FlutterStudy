import 'package:flutter/material.dart';

class StackAlignPage extends StatelessWidget {
  const StackAlignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack和Align配合使用'),
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
      height: 300,
      color: Colors.red,
      child: Stack(
        children: const [
          Align(
            alignment: Alignment.topLeft, // 位于左上角
            child: Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.center, // 位于中间
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight, // 位于右下角
            child: Icon(
              Icons.settings,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
