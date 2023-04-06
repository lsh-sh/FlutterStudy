import 'package:flutter/material.dart';

class ListView4Page extends StatelessWidget {
  const ListView4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView水平列表'),
      ),
      body: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
        padding: const EdgeInsets.only(top: 10),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
              color: Colors.red,
              width: 150,
              child: Column(
                children: [
                  SizedBox(
                    // 配置一个容器包裹住image，让image进行填充
                    height: 80,
                    width: 150,
                    child: Image.network(
                      'https://www.itying.com/images/flutter/1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text(
                    "标题1",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )),
          Container(
              width: 150,
              color: Colors.yellow,
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    width: 150,
                    child: Image.network(
                      'https://www.itying.com/images/flutter/2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text("标题2", style: TextStyle(color: Colors.white))
                ],
              )),
          Container(
              width: 150,
              color: Colors.orange,
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    width: 150,
                    child: Image.network(
                      'https://www.itying.com/images/flutter/3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text("标题3", style: TextStyle(color: Colors.white))
                ],
              )),
          Container(
              width: 150,
              color: Colors.pink,
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    width: 150,
                    child: Image.network(
                      'https://www.itying.com/images/flutter/4.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text("标题4", style: TextStyle(color: Colors.white))
                ],
              )),
        ],
      ),
    );
  }
}
