import 'package:flutter/material.dart';
import './base_page.dart';

class GridView1Page extends BasePage {
  const GridView1Page({super.key});

  @override
  Widget? bodyBuild(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  List<Widget> _initGridViewData() {
    List<Widget> tempList = [];
    for (var i = 1; i <= 12; i++) {
      tempList.add(Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          '第$i条数据',
          style: const TextStyle(color: Colors.white),
        ),
      ));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // 内边距
      padding: const EdgeInsets.all(10),
      // 一行显示Widget的数量
      crossAxisCount: 2,
      // 水平Widget之间的距离
      crossAxisSpacing: 10,
      // 垂直Widget之间的距离
      mainAxisSpacing: 10,
      // 子Widget宽高比例
      childAspectRatio: 0.7,
      children: _initGridViewData(),
    );
  }
}
