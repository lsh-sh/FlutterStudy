import 'package:flutter/material.dart';
import './base_page.dart';

class GridView2Page extends BasePage {
  const GridView2Page({super.key});

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
    return GridView.extent(
      // 内边距
      padding: const EdgeInsets.all(10),
      // 水平Widget之间的距离
      crossAxisSpacing: 10,
      // 垂直Widget之间的距离
      mainAxisSpacing: 10,
      // 子Widget宽高比
      childAspectRatio: 0.7,
      // 横轴子元素的最大长度，可以创建子元素为固定长度的gridview
      maxCrossAxisExtent: 120,
      children: _initGridViewData(),
    );
  }
}
