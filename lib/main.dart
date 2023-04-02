import 'package:flutter/material.dart';
import './pages/first_app.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  List<String> listData = [
    '第一个Flutter应用',
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
          MaterialPageRoute(builder: (context) => const FirstApp())
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
