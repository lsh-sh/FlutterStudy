import 'package:flutter/material.dart';
import './base_page.dart';

class StackPage extends BasePage {
  const StackPage({super.key});

  @override
  Widget? bodyBuild(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center, // 设置子元素的显示位置
      children: [
        Container(
          height: 400,
          width: 300,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width: 150,
          color: Colors.yellow,
        ),
        const Text('你好 Flutter'),
      ],
    );
  }
}
