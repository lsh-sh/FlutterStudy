import 'package:flutter/material.dart';
import './pages/first_app.dart';
import './pages/container.dart';
import './pages/text.dart';
import './pages/image.dart';
import './pages/icon.dart';
import './pages/listview1.dart';
import './pages/listview2.dart';
import './pages/listview3.dart';
import './pages/listview4.dart';
import './pages/listview5.dart';
import './pages/gridview1.dart';
import './pages/gridview2.dart';
import './pages/gridview3.dart';
import './pages/row.dart';
import './pages/column.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Study",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final List<String> _listTitles = [
    '第一个Flutter应用',
    'Container组件',
    'Text组件',
    '图片组件',
    'Icon组件',
    'ListView简单使用',
    'ListView图标列表',
    'ListView图文列表',
    'ListView水平列表',
    'ListView动态列表',
    'GridView.count实现网格布局',
    'GridView.extent实现网格布局',
    'GridView.extent实现动态列表',
    '线性布局-Row',
    '线性布局-Column',
  ];

  final List<Widget> _pages = const [
    FirstPage(),
    ContainerPage(),
    TextPage(),
    ImagePage(),
    IconPage(),
    ListView1Page(),
    ListView2Page(),
    ListView3Page(),
    ListView4Page(),
    ListView5Page(),
    GridView1Page(),
    GridView2Page(),
    GridView3Page(),
    RowPage(),
    ColumnPage(),
  ];

  MyApp({super.key});

  Widget getItem(BuildContext context, int index) {
    // 获取每一条的列表widget
    return GestureDetector(
      // 手势识别，从网上查的，具体怎么用后面更新代码
      child: Column(
        children: [
          ListTile(
            trailing: const Icon(Icons.arrow_forward),
            title: Text(_listTitles[index]),
          ),
          const Divider()
        ],
      ),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => _pages[index]));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Study'),
        ),
        body: ListView.builder(
            // listview展示列表数据，针对数据量比较大的情况
            itemCount: _listTitles.length,
            itemBuilder: (context, index) {
              return getItem(context, index);
            }));
  }
}
