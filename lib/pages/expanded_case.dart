import 'package:flutter/material.dart';

class ExpandedCasePage extends StatelessWidget {
  const ExpandedCasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column和Row结合Expanded案例'),
        ),
        body: const MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 200,
          width: double.infinity, // 和父容器一样的宽度，这里也就是屏幕宽度
          color: Colors.black,
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 180,
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Image.network(
                      "https://www.itying.com/images/flutter/2.png",
                      fit: BoxFit.cover)),
              const SizedBox(width: 5),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: double.infinity, // 宽度和父容器一致
                            child: Image.network(
                                "https://www.itying.com/images/flutter/3.png",
                                fit: BoxFit.cover),
                          )),
                      const SizedBox(height: 5),
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: double.infinity,
                            child: Image.network(
                                "https://www.itying.com/images/flutter/4.png",
                                fit: BoxFit.cover),
                          )),
                    ],
                  ))
            ],
          ),
        )
      ],
    );
  }
}
