import 'package:flutter/material.dart';

class ImageApp extends StatelessWidget {
  const ImageApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('图片组件'),
        ),
        body: Center(
          child: Column(
            children: const [
              LoadNetWorkImage(),
              Text('加载网络图片'),
              LoadLocalImage(),
              Text('加载本地图片'),
              ContainerCircleImage(),
              Text('Container实现圆形图片'),
              ClipOvalCircleImage(),
              Text('ClipOval实现圆形图片'),
              CircleAvatarImage(),
              Text('CircleAvatar实现圆形图片'),
            ],
          ),
        ),
      ),
    );
  }
}

// 加载网络图片
class LoadNetWorkImage extends StatelessWidget {
  const LoadNetWorkImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: 100,
      height: 100,
      color: Colors.yellow,
      child: Image.network(
        "https://www.itying.com/themes/itying/images/ionic4.png",
        // fit: BoxFit.cover, // 填充效果
        // scale: 2, //  缩放，缩小2倍
        // alignment: Alignment.topLeft, // 在父级容器里位置
        // repeat: ImageRepeat.repeatX, // 沿着X轴进行平铺
      ),
    );
  }
}

//加载本地图片
class LoadLocalImage extends StatelessWidget {
  const LoadLocalImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.only(top: 20),
      child: Image.asset("images/a.jpeg"),
    );
  }
}

// Container实现圆形图片
class ContainerCircleImage extends StatelessWidget {
  const ContainerCircleImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(75),
          image: const DecorationImage(
              image: NetworkImage(
                  "https://www.itying.com/themes/itying/images/ionic4.png"),
              fit: BoxFit.cover)),
    );
  }
}

// ClipOval实现圆形图片
class ClipOvalCircleImage extends StatelessWidget {
  const ClipOvalCircleImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: ClipOval(
        child: Image.network(
          "https://www.itying.com/themes/itying/images/ionic4.png",
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// CircleAvatar实现圆形图片
class CircleAvatarImage extends StatelessWidget {
  const CircleAvatarImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: const CircleAvatar(
        radius: 50,
        backgroundImage: NetworkImage(
            "https://www.itying.com/themes/itying/images/ionic4.png"),
      ),
    );
  }
}
