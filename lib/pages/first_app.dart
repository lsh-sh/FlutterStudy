import 'package:flutter/material.dart';
import './base_page.dart';

// 定义一个类继承StatelessWidget

class FirstPage extends BasePage {
  const FirstPage({super.key});

  @override
  Widget? bodyBuild(BuildContext context) {
    return const Center(
      child: Text(
        '你好 Flutter',
        textDirection: TextDirection.ltr, // 设置文字方向，从左到右
        style: TextStyle(
            // 设置文字样式
            color: Colors.red, //设置文字颜色
            fontSize: 40 // 设置文字大小
            ),
      ),
    );
  }
}
