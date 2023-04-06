import 'package:flutter/material.dart';
import './base_page.dart';

class StackAlignPage extends BasePage {
  const StackAlignPage({super.key});

  @override
  Widget? bodyBuild(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.red,
      child: Stack(
        children: const [
          Align(
            alignment: Alignment.topLeft, // 位于左上角
            child: Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.center, // 位于中间
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight, // 位于右下角
            child: Icon(
              Icons.settings,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
