import 'package:flutter/material.dart';
import './base_page.dart';

class ListView1Page extends BasePage {
  const ListView1Page({super.key});

  @override
  Widget? bodyBuild(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // listview的使用
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
