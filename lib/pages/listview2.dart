import 'package:flutter/material.dart';

class ListView2Page extends StatelessWidget {
  const ListView2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView图标列表'),
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
    return ListView(
      children: const [
        ListTile(
            leading: Icon( // 头部图标
              Icons.home,
            ),
            title: Text('首页')),
        Divider(),
        ListTile(
            leading: Icon(
              Icons.assignment,
              color: Colors.red,
            ),
            title: Text('全部订单')),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.payment,
            color: Colors.green,
          ),
          title: Text('待付款'),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.favorite,
            color: Colors.lightGreen,
          ),
          title: Text('我的收藏'),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.people,
            color: Colors.black54,
          ),
          title: Text('在线客服'),
          trailing: Icon(Icons.arrow_forward), // 尾部图标
        ),
        Divider(),
      ],
    );
  }
}
