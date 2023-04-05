import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('线性布局-Row'),
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
      padding: const EdgeInsets.only(top: 20),
      children: [
        // 主轴按start对齐
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconContainer(Icons.home, color: Colors.red),
            IconContainer(Icons.search, color: Colors.yellow),
            IconContainer(Icons.settings, color: Colors.orange),
          ],
        ),
        const Text('MainAxisAlignment.start', textAlign: TextAlign.center),
        const Divider(),
        // 主轴按spaceAround对齐
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconContainer(Icons.home, color: Colors.red),
            IconContainer(Icons.search, color: Colors.yellow),
            IconContainer(Icons.settings, color: Colors.orange),
          ],
        ),
        const Text('MainAxisAlignment.spaceAround',
            textAlign: TextAlign.center),
        const Divider(),
        // 主轴按center对齐
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconContainer(Icons.home, color: Colors.red),
            IconContainer(Icons.search, color: Colors.yellow),
            IconContainer(Icons.settings, color: Colors.orange),
          ],
        ),
        const Text('MainAxisAlignment.center', textAlign: TextAlign.center),
        const Divider(),
        // 主轴按spaceEvenly对齐
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconContainer(Icons.home, color: Colors.red),
            IconContainer(Icons.search, color: Colors.yellow),
            IconContainer(Icons.settings, color: Colors.orange),
          ],
        ),
        const Text('MainAxisAlignment.spaceEvenly',
            textAlign: TextAlign.center),
        const Divider(),
        // 主轴按spaceBetween对齐
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconContainer(Icons.home, color: Colors.red),
            IconContainer(Icons.search, color: Colors.yellow),
            IconContainer(Icons.settings, color: Colors.orange),
          ],
        ),
        const Text('MainAxisAlignment.spaceBetween',
            textAlign: TextAlign.center),
        const Divider(),
        // 次轴的对齐方式为start
        Container(
          width: double.infinity, // 宽度设置和屏幕一样宽
          height: 150,
          color: Colors.black12,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconContainer(Icons.home, color: Colors.red),
              IconContainer(Icons.search, color: Colors.yellow),
              IconContainer(Icons.settings, color: Colors.orange),
            ],
          ),
        ),
        const Text('CrossAxisAlignment.start', textAlign: TextAlign.center),
        const Divider(),
        // 次轴的对齐方式为center
        Container(
          width: double.infinity, // 宽度设置和屏幕一样宽
          height: 150,
          color: Colors.black12,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconContainer(Icons.home, color: Colors.red),
              IconContainer(Icons.search, color: Colors.yellow),
              IconContainer(Icons.settings, color: Colors.orange),
            ],
          ),
        ),
        const Text('CrossAxisAlignment.center', textAlign: TextAlign.center),
        const Divider(),
        // 次轴的对齐方式为end
        Container(
          width: double.infinity, // 宽度设置和屏幕一样宽
          height: 150,
          color: Colors.black12,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconContainer(Icons.home, color: Colors.red),
              IconContainer(Icons.search, color: Colors.yellow),
              IconContainer(Icons.settings, color: Colors.orange),
            ],
          ),
        ),
        const Text('CrossAxisAlignment.end', textAlign: TextAlign.center),
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
