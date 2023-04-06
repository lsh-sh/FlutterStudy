import 'package:flutter/material.dart';
import '../fonts.dart';
import './base_page.dart';

class IconPage extends BasePage {
  const IconPage({super.key});

  @override
  Widget? bodyBuild(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          // 系统提供的图标
          Icon(
            Icons.category,
            size: 60,
            color: Colors.red,
          ),
          SizedBox(
            height: 20,
          ),
          Icon(
            Icons.shop,
            size: 40,
            color: Colors.blue,
          ),
          Text('以上是系统图标'),
          // 使用自定义图标
          SizedBox(
            height: 20,
          ),
          Icon(
            IconFonts.book,
            size: 60,
            color: Colors.red,
          ),
          SizedBox(
            height: 20,
          ),
          Icon(
            IconFonts.weixin,
            size: 60,
            color: Colors.blue,
          ),
          SizedBox(
            height: 20,
          ),
          Icon(
            IconFonts.cart,
            size: 60,
            color: Colors.pink,
          ),
          Text('以上是自定义图标')
        ],
      ),
    );
  }
}
