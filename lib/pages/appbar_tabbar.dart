import 'package:flutter/material.dart';

class BarPage extends StatefulWidget {
  const BarPage({Key? key}) : super(key: key);

  @override
  State<BarPage> createState() => _BarPageState();
}

class _BarPageState extends State<BarPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    //监听_tabController的改变事件
    _tabController.addListener(() {
      if (_tabController.animation!.value == _tabController.index) {
        print(_tabController.index); //获取点击或滑动页面的索引值
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
        ],
        title: const Text('AppBar和TabBar使用'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50), // 设置appbar的高度
          child: Material(
            // 配置tabbar的背景色
            color: Colors.white,
            child: SizedBox(
              // 通过SizedBox配置tabbar的高度
              height: 40,
              child: TabBar(
                  // isScrollable: true, //如果多个按钮的话可以滑动
                  // 设置指示器颜色
                  indicatorColor: Colors.red,
                  // 设置指示器宽度和文字一样宽
                  indicatorSize: TabBarIndicatorSize.label,
                  // 设置label样式
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.red,
                  indicatorPadding: const EdgeInsets.only(bottom: 5),
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      text: '热门',
                    ),
                    Tab(
                      text: '推荐',
                    ),
                    Tab(
                      text: '视频',
                    ),
                  ]),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Text('热门'),
          Text('推荐'),
          Text('视频'),
        ],
      ),
    );
  }
}

