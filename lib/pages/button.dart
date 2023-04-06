import 'package:flutter/material.dart';
import './base_page.dart';

class ButtonPage extends BasePage {
  const ButtonPage({super.key});

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
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // 普通按钮
            ElevatedButton(onPressed: () {}, child: const Text('普通按钮')),
            // 文本按钮
            TextButton(onPressed: () {}, child: const Text('文本按钮')),
            // 边框按钮
            OutlinedButton(onPressed: () {}, child: const Text('边框按钮')),
            // 图标按钮
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        // 给按钮加上图标
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // 普通按钮
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.send),
                label: const Text('发送')),
            // 文本按钮
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.info),
                label: const Text('详情')),
            // 边框按钮
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('添加'))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        // 修改button样式
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // 修改背景和字体颜色
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                  // 修改按钮背景色
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                  // 修改按钮文字颜色
                  foregroundColor: MaterialStatePropertyAll(Colors.black)),
              child: const Text('普通按钮'),
            ),
            // button的宽高没法直接设置，通过容器包裹让button填充到容器的宽高
            SizedBox(
              height: 50,
              width: 120,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('大按钮'),
              ),
            )
          ],
        ),
        Row(
          children: [
            // 自适应按钮
            Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('自适应按钮'),
                  ),
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // 圆角按钮
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              child: const Text('圆角按钮'),
            ),
            // 圆形按钮
            SizedBox(
              width: 80,
              height: 80,
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(0)),
                    // 去除内边距
                    shape: MaterialStatePropertyAll(CircleBorder(
                        side: BorderSide(
                            width: 2, color: Colors.yellow) // 配置边框宽度和颜色
                        ))),
                child: const Text('圆形按钮'),
              ),
            ),
            // 修改边框按钮的边框
            OutlinedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    side: MaterialStatePropertyAll(
                        BorderSide(width: 2, color: Colors.red))),
                child: const Text('边框按钮'))
          ],
        )
      ],
    );
  }
}
