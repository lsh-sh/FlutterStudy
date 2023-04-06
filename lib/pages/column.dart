import 'package:flutter/material.dart';
import './base_page.dart';

class ColumnPage extends BasePage {
  const ColumnPage({super.key});

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
      scrollDirection: Axis.horizontal,
      children: [
        // 主轴按start对齐
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconContainer(Icons.home, color: Colors.red),
            IconContainer(Icons.search, color: Colors.yellow),
            IconContainer(Icons.settings, color: Colors.orange),
          ],
        ),
        const Center(child: Text('MainAxis\nAlignment\n.start')),
        const VerticalDivider(),
        // 主轴按spaceAround对齐
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconContainer(Icons.home, color: Colors.red),
            IconContainer(Icons.search, color: Colors.yellow),
            IconContainer(Icons.settings, color: Colors.orange),
          ],
        ),
        const Center(child: Text('MainAxis\nAlignment\n.spaceAround')),
        const VerticalDivider(),
        // 主轴按center对齐
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconContainer(Icons.home, color: Colors.red),
            IconContainer(Icons.search, color: Colors.yellow),
            IconContainer(Icons.settings, color: Colors.orange),
          ],
        ),
        const Center(child: Text('MainAxis\nAlignment\n.center')),
        const VerticalDivider(),
        // 主轴按spaceEvenly对齐
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconContainer(Icons.home, color: Colors.red),
            IconContainer(Icons.search, color: Colors.yellow),
            IconContainer(Icons.settings, color: Colors.orange),
          ],
        ),
        const Center(child: Text('MainAxis\nAlignment\n.spaceEvenly')),
        const VerticalDivider(),
        // 主轴按spaceBetween对齐
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconContainer(Icons.home, color: Colors.red),
            IconContainer(Icons.search, color: Colors.yellow),
            IconContainer(Icons.settings, color: Colors.orange),
          ],
        ),
        const Center(child: Text('MainAxis\nAlignment\n.spaceBetween')),
        const VerticalDivider(),
        // 次轴的对齐方式为start
        Container(
          width: 150,
          color: Colors.black12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconContainer(Icons.home, color: Colors.red),
              IconContainer(Icons.search, color: Colors.yellow),
              IconContainer(Icons.settings, color: Colors.orange),
            ],
          ),
        ),
        const Center(child: Text('CrossAxis\nAlignment\n.start')),
        const VerticalDivider(),
        // 次轴的对齐方式为center
        Container(
          width: 150,
          color: Colors.black12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconContainer(Icons.home, color: Colors.red),
              IconContainer(Icons.search, color: Colors.yellow),
              IconContainer(Icons.settings, color: Colors.orange),
            ],
          ),
        ),
        const Center(child: Text('CrossAxis\nAlignment\n.center')),
        const VerticalDivider(),
        // 次轴的对齐方式为end
        Container(
          width: 150,
          color: Colors.black12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconContainer(Icons.home, color: Colors.red),
              IconContainer(Icons.search, color: Colors.yellow),
              IconContainer(Icons.settings, color: Colors.orange),
            ],
          ),
        ),
        const Center(child: Text('CrossAxis\nAlignment\n.end')),
        const VerticalDivider(),
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
