import 'package:flutter/material.dart';

class StackAlignPage extends StatelessWidget {
  const StackAlignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Align组件'),
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
    return Container(
      width: 300,
      height: 300,
      color: Colors.red,
      child: Stack(
        children: const [
          Align(
            alignment: Alignment.topLeft,
            child: Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
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
