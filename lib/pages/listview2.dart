import 'package:flutter/material.dart';
import './base_page.dart';

class ListView2Page extends BasePage {
  const ListView2Page({super.key});

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
      children: const [
        ListTile(
            leading: Icon(
              // 头部图标
              Icons.home,
            ),
            title: Text('首页')),
        Divider(), // 分割线
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
