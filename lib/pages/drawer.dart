import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  MyApp();
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('抽屉菜单Drawer')),
      body: const Text('Flutter App'),
      drawer: Drawer(
        child: Column(
          children: const [
            // DrawerHeader使用
            // Row(
            //   children: const [
            //     Expanded(
            //       flex: 1,
            //       child: DrawerHeader(
            //           decoration: BoxDecoration(
            //               image: DecorationImage(
            //                   image: NetworkImage(
            //                       'https://www.itying.com/images/flutter/2.png'),
            //                   fit: BoxFit.cover)),
            //           child: ListTile(
            //             leading: CircleAvatar(
            //               backgroundImage: NetworkImage(
            //                   'https://www.itying.com/images/flutter/3.png'),
            //             ),
            //             title: Text('张三'),
            //           )),
            //     )
            //   ],
            // ),

            // UserAccountsDrawerHeader使用
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.itying.com/images/flutter/2.png'),
                        fit: BoxFit.cover)),
                // 用户头像
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.itying.com/images/flutter/3.png'),
                ),
                accountName: Text('lshsh'),
                accountEmail: Text('lshsh@qq.com')),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.people)),
              title: Text('用户中心'),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.settings)),
              title: Text('系统设置'),
            )
          ],
        ),
      ),
      // endDrawer: , // 右边抽屉菜单
    );
  }
}
