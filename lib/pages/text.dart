import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Text组件'),
        ),
        body: const MyApp()
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.yellow,
        child: const Text('你好我是Flutter你好我是Flutter你好我是Flutter你好我是Flutter',
          textAlign: TextAlign.left, // 文字向左对齐
          maxLines: 1, // 最大只显示1行
          overflow: TextOverflow.ellipsis, // 溢出的显示几个小点
          style: TextStyle(
            fontStyle: FontStyle.italic,// 斜体
            fontSize: 20, // 文字大小
            fontWeight: FontWeight.w900, // 文字加粗
            color: Colors.red, // 文字颜色
            letterSpacing: 2, // 文字之间的间距
            decoration: TextDecoration.underline, // 下划线
            decorationColor: Colors.black, // 下划线的颜色
            decorationStyle: TextDecorationStyle.dashed // 下滑线的样式为虚线
          ),
        ),
      ),
    );
  }
}
