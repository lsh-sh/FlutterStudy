import 'package:flutter/material.dart';
import '../listData.dart';
import './base_page.dart';

class GridView3Page extends BasePage {
  const GridView3Page({super.key});

  @override
  Widget? bodyBuild(BuildContext context) {
    return const MyApp();
  }
}

// GridView.builder实现动态列表
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget _getItem(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
      child: Column(
        children: [
          Image.network(listData[index]['imageUrl']),
          const SizedBox(
            height: 10,
          ),
          Text(
            listData[index]['title'],
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: listData.length, // 设置子条目的数量
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // 水平Widget之间的距离
          crossAxisSpacing: 10,
          // 垂直Widget之间的距离
          mainAxisSpacing: 10,
        ),
        itemBuilder: _getItem);
  }
}

// GridView.count实现动态列表
class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  // 初始化GridView的列表条目
  List<Widget> _initGridViewData() {
    var tempList = listData.map((el) => Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
          child: Column(
            children: [
              Image.network(el['imageUrl']),
              const SizedBox(
                height: 10,
              ),
              Text(
                el['title'],
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ));
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // 内边距
      padding: const EdgeInsets.all(10),
      // 水平Widget之间的距离
      crossAxisSpacing: 10,
      // 垂直Widget之间的距离
      mainAxisSpacing: 10,
      // 横轴子元素的最大长度，可以创建子元素为固定长度的gridview
      crossAxisCount: 2,
      children: _initGridViewData(),
    );
  }
}
