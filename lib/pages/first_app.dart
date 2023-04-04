import 'package:flutter/material.dart';

// 定义一个类继承StatelessWidget
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text('自定义组件'),
        ),
        body: const Center(
          child: Text(
            '你好 Flutter',
            textDirection: TextDirection.ltr, // 设置文字方向，从左到右
            style: TextStyle( // 设置文字样式
                color: Colors.red,  //设置文字颜色
                fontSize: 40 // 设置文字大小
            ),
          ),
        ),
      )
    );
  }
}


