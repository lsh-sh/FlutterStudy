import 'package:flutter/material.dart';
import './base_page.dart';

class PaddingPage extends BasePage {
  const PaddingPage({super.key});

  @override
  Widget? bodyBuild(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10), // 让子元素上下左右离外层10单位的间距
      child: Text('你好 Flutter'),
    );
  }
}
