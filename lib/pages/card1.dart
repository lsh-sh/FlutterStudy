import 'package:flutter/material.dart';
import './base_page.dart';

class Card1Page extends BasePage {
  const Card1Page({super.key});

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
      padding: const EdgeInsets.all(10),
      children: [
        Card(
          //设置阴影效果
          elevation: 5,
          // 设置圆角
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: const [
              ListTile(
                title: Text(
                  '张三',
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text('高级软件工程师'),
              ),
              Divider(),
              ListTile(
                title: Text('电话：12412412432'),
              ),
              ListTile(
                title: Text('地址：南京市雨花台区'),
              )
            ],
          ),
        ),
        Card(
          //设置阴影效果
          elevation: 5,
          // 设置圆角
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: const [
              ListTile(
                title: Text(
                  '李四',
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text('高级软件工程师'),
              ),
              Divider(),
              ListTile(
                title: Text('电话：12412412432'),
              ),
              ListTile(
                title: Text('地址：南京市雨花台区'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
