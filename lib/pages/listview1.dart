import 'package:flutter/material.dart';

class ListView1Page extends StatelessWidget {
  const ListView1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView简单使用'),
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
    return ListView( // listview的使用
      children: const [
        ListTile(title: Text('我是一个标题')), // 一个listview条目
        Divider(), // 分割线
        ListTile(title: Text('我是一个标题')),
        Divider(),
        ListTile(title: Text('我是一个标题')),
        Divider(),
        ListTile(title: Text('我是一个标题')),
        Divider(),
        ListTile(title: Text('我是一个标题')),
        Divider(),
        ListTile(title: Text('我是一个标题')),
        Divider(),
        ListTile(title: Text('我是一个标题')),
        Divider(),
        ListTile(title: Text('我是一个标题')),
        Divider(),
        ListTile(title: Text('我是一个标题')),
        Divider(),
        ListTile(title: Text('我是一个标题')),
        Divider(),
        ListTile(title: Text('我是一个标题')),
        Divider(),
        ListTile(title: Text('我是一个标题')),
        Divider(),
      ],
    );
  }
}
