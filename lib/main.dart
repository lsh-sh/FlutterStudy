import 'package:flutter/material.dart';
import './pages/first_app.dart';
import './pages/container.dart';
import './pages/text.dart';
import './pages/image.dart';
import './pages/icon.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Study",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  List<String> listData = [
    '第一个Flutter应用',
    'Container组件',
    'Text组件',
    '图片组件',
    'Icon组件'
  ];

  List<Widget> listPage = const [
    FirstApp(),
    ContainerApp(),
    TextApp(),
    ImageApp(),
    IconApp()
  ];

  MyApp({super.key});


  Widget getItem(BuildContext context,int index){ // 获取每一条的列表widget
    return GestureDetector( // 手势识别，从网上查的，具体怎么用后面更新代码
      child: Column(
        children: [
          ListTile(
            trailing: const Icon(Icons.arrow_forward),
            title: Text(listData[index]),
          ),
          const Divider()
        ],
      ),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => listPage[index])
        );
      },
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Study'),
      ),
      body: ListView.builder( // listview展示列表数据，针对数据量比较大的情况
        itemCount: listData.length,
          itemBuilder: (context,index){
           return getItem(context,index);
          }
      )
    );
  }
}
