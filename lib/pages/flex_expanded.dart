import 'package:flutter/material.dart';

class FlexExpandedPage extends StatelessWidget {
  const FlexExpandedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('弹性布局-Flex Expanded'),
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
    return Flex(
      direction: Axis.horizontal, //横向布局，纵向布局使用Axis.vertical
      children: [
        Expanded(
            // 屏幕被分成3份，这个占用1份
            flex: 1,
            child: IconContainer(Icons.home)), // 这个元素设置宽度是没有效果的
        Expanded(
            // 屏幕被分成3份，这个占用2份
            flex: 2,
            child: IconContainer(Icons.ac_unit_sharp, color: Colors.orange)),
      ],
    );
  }
}

// 自定义IconContainer
class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;

  IconContainer(this.icon, {Key? key, this.color = Colors.red})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 50,
      height: 50,
      color: color,
      child: Icon(
        icon,
        size: 28,
        color: Colors.white,
      ),
    );
  }
}
