import 'package:flutter/material.dart';
import '../listData.dart';
import './base_page.dart';

class ListView5Page extends BasePage {
  const ListView5Page({super.key});

  @override
  Widget? bodyBuild(BuildContext context) {
    return const MyApp();
  }
}

// 动态列表的实现1，使用ListView.builder
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) => Column(
              children: [
                ListTile(
                  leading: Image.network(listData[index]['imageUrl']),
                  title: Text(listData[index]['title']),
                  subtitle: Text(listData[index]['author']),
                ),
                const Divider()
              ],
            ));
  }
}

// 动态列表的实现2，使用函数构建列表
class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  // 初始化listview展示的条目
  List<Widget> _initListData() {
    var tempList = listData.map((el) => Column(
          children: [
            ListTile(
              leading: Image.network(el['imageUrl']),
              title: Text(el['title']),
              subtitle: Text(el['author']),
            ),
            const Divider()
          ],
        ));
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData(),
    );
  }
}
