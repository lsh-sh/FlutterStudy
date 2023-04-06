import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({Key? key}) : super(key: key);

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  List<String> urls = [
    'https://www.itying.com/images/flutter/1.png',
    'https://www.itying.com/images/flutter/2.png',
    'https://www.itying.com/images/flutter/3.png',
    'https://www.itying.com/images/flutter/4.png',
  ];
  int _curIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView使用'),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
                onPageChanged: (i) {
                  setState(() {
                    _curIndex = i;
                  });
                },
                itemCount: urls.length,
                itemBuilder: (context, index) => ImageView(urls[index])),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    urls.length,
                    (i) => Container(
                          margin: const EdgeInsets.only(left: 5, right: 5),
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color:
                                  _curIndex == i ? Colors.blue : Colors.white,
                              shape: BoxShape.circle),
                        )).toList(),
              ))
        ],
      ),
    );
  }
}

class ImageView extends StatelessWidget {
  String url;
  double width;
  double height;

  ImageView(this.url,
      {Key? key, this.width = double.infinity, this.height = 200})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: Image.network(url, fit: BoxFit.cover));
  }
}
