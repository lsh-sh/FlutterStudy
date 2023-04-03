import 'package:flutter/material.dart';

class ContainerApp extends StatelessWidget {
  const ContainerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container组件'),
        ),
        body: Column(
          children: const [MyApp(), MyButton()],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        // transform: Matrix4.translationValues(40, 0, 0), // 向右边移动40个距离
        transform: Matrix4.rotationZ(0.2),
        // 沿着z轴旋转
        // color: Colors.yellow, // 如果只需要Container背景颜色，配置这个也可以
        alignment: Alignment.center,
        // 配置Container内元素的方位
        decoration: BoxDecoration(
            // color: Colors.yellow, // 配置背景颜色
            border: Border.all(
                // 配置边框
                color: Colors.red,
                width: 2),
            borderRadius: BorderRadius.circular(10), // 配置圆角
            // borderRadius: BorderRadius.circular(100), // 配置成圆形
            boxShadow: const [
              // 配置阴影效果
              BoxShadow(color: Colors.blue, blurRadius: 10)
            ],
            gradient: const LinearGradient(// 配置背景为渐变色
                colors: [Colors.red, Colors.yellow])),
        child: const Text(
          "你好 Flutter",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}

// 自定义按钮组件
class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // 对齐方式
      width: 200,
      height: 40,
      // margin: EdgeInsets.all(10), //距离四周外间距的距离
      margin: const EdgeInsets.only(top: 40),
      // 距离顶部外间距的距离
      // padding: const EdgeInsets.only(left: 20), // 内间距
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      child: const Text(
        '按钮',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
