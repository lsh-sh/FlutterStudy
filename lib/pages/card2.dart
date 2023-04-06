import 'package:flutter/material.dart';
import '../listData.dart';
import './base_page.dart';

class Card2Page extends BasePage {
  const Card2Page({super.key});

  @override
  Widget? bodyBuild(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  List<Widget> _initCardData() {
    var tempList = listData.map((e) => Card(
          //设置阴影效果
          elevation: 5,
          // 对图片进行裁剪，达到圆角效果
          clipBehavior: Clip.antiAlias,
          // 设置圆角
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9, // 设置图片宽高比
                child: Image.network(
                  e['imageUrl'],
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(e['imageUrl']),
                ),
                title: Text(e['title']),
                subtitle: Text(e['author']),
              )
            ],
          ),
        ));
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: _initCardData(),
    );
  }
}
