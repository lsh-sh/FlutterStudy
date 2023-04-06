import 'package:flutter/material.dart';
import './base_page.dart';

class AspectRatioPage extends BasePage {
  const AspectRatioPage({super.key});

  @override
  Widget? bodyBuild(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1, // 屏幕是屏幕的宽度，高度是屏幕宽度的一半
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
