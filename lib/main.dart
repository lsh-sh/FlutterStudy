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
import './pages/padding.dart';
import './pages/row.dart';
import './pages/column.dart';
import './pages/flex_expanded.dart';
import './pages/expanded_case.dart';
import './pages/stack.dart';
import './pages/stack_positioned.dart';
import './pages/stack_align.dart';
import './pages/aspect_ratio.dart';
import './pages/card1.dart';
import './pages/card2.dart';
import './pages/button.dart';

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
    'Padding组件',
    '线性布局-Row',
    '线性布局-Column',
    '弹性布局-Flex Expanded',
    'Column和Row结合Expanded案例',
    '层叠布局-Stack',
    'Stack和Positioned配合使用',
    'Stack和Align配合使用',
    'AspectRatio组件',
    'Card实现通讯录列表',
    'Card实现图文列表',
    'Button组件',
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
    PaddingPage(),
    RowPage(),
    ColumnPage(),
    FlexExpandedPage(),
    ExpandedCasePage(),
    StackPage(),
    StackPositionedPage(),
    StackAlignPage(),
    AspectRatioPage(),
    Card1Page(),
    Card2Page(),
    ButtonPage()
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
