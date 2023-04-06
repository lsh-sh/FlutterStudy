import 'package:flutter/material.dart';
import './base_page.dart';

class ListView3Page extends BasePage {
  const ListView3Page({super.key});

  @override
  Widget? bodyBuild(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(5),
      children: [
        // 图片在前边显示
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/1.png"),
          // 加载网络图片
          title: const Text('华北黄淮高温雨今起强势登场'),
          // 添加一级标题
          subtitle: const Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"), // 添加二级标题
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/2.png"),
          title: const Text('保监局50天开32罚单 “断供”违规资金为房市降温'),
          subtitle: const Text("中国天气网讯 保监局50天开32罚单 “断供”违规资金为房市降 温"),
        ),
        // 图片在后边显示
        ListTile(
            title: const Text('华北黄淮高温雨今起强势登场'),
            subtitle: const Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
            trailing:
                Image.network("https://www.itying.com/images/flutter/3.png")),
        const Divider(),
        ListTile(
          trailing:
              Image.network("https://www.itying.com/images/flutter/4.png"),
          title: const Text('普京现身俄海军节阅兵：乘艇检阅军舰'),
        ),
        //前后都有图片显示
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/5.png"),
          title: const Text('鸿星尔克捐1个亿帮助困难残疾群体 网友：企业有担当'),
          trailing:
              Image.network("https://www.itying.com/images/flutter/5.png"),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/6.png"),
          title: const Text('行业冥灯？老罗最好祈祷苹果的AR能成'),
          trailing:
              Image.network("https://www.itying.com/images/flutter/6.png"),
        ),
        const Divider()
      ],
    );
  }
}
