import 'package:flutter/material.dart';

// 定义一个基类继承StatelessWidget
abstract class BasePage extends StatelessWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 获取首页传过来的参数
    String title = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: bodyBuild(context),
    );
  }

  Widget? bodyBuild(BuildContext context);
}
