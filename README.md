# FlutterStudy
本笔记是学习B站上的[视频课程](https://www.bilibili.com/video/BV1S4411E7LY?p=2&vd_source=7f3fdd89d8f49319865d708ed0bc9d3c)

视频课程中有一部分dart学习，这一部分我没有做笔记。

## Flutter介绍
Flutter是谷歌公司开发的一款开源、免费的UI框架，可以快速的在Android和iOS上构建高质量App。

它最大的特点就是跨平台、以及高性能。 目前 Flutter 已经支持 iOS、Android、Web、Windows、macOS、Linux等。

Flutter 官网：https://flutter.dev/

Flutter Packages官网：https://pub.dev/

## Flutter目录结构介绍
![目录结构](./static/1.png)
我在创建项目时并没有选择windows、macos、linux和web平台，所以没有生成这些平台的目录结构，static是我自己创建的用于存放截图的。

| 文件夹                | 作用                                                         |
| --------------------- | ------------------------------------------------------------ |
| android               | android平台相关代码                                          |
| ios                   | ios平台相关代码                                              |
| lib                   | flutter相关代码，我们编写的代码就在这个文件夹                     |
| test                  | 用于存放测试代码                                             |
| pubspec.yaml          | 配置文件，一般存放一些第三方库的依赖。                          |
| analysis_options.yaml | 分析dart语法的文件，老项目升级成新项目有警告信息的话可以删掉    |

其中lib目录下的main.dart是主入口文件，lib/pages下面存放的是二级界面

## MaterialApp 和 Scaffold两个组件
### MaterialApp
MaterialApp是一个方便的Widget，它封装了应用程序实现Material Design所需要的一些Widget。

一般作为顶层widget使用。

__常用属性：__
- home（主页）
- title（标题）
- color（颜色）
- theme（主题）
- routes（路由）
### Scaffold两个组件
Scaffold是Material Design布局结构的基本实现。

此类提供了用于显示drawer、snackbar和底部sheet的API。

__常用属性：__
- appBar（显示在界面顶部的一个 AppBar）
- body（当前界面所显示的主要内容 Widget）
- drawer（抽屉菜单控件）

基本使用可参考代码[main.dart](./lib/main.dart)
## 自定义组件使用
在Flutter中自定义组件其实就是一个类，这个类需要继承StatelessWidget/StatefulWidget

StatelessWidget 是无状态组件，状态不可变的widget

StatefulWidget 是有状态组件，持有的状态可能在widget生命周期改变

可参考代码[first_app.dart](./lib/pages/first_app.dart)

## Container组件
| 名称              | 功能                                                        |
| --------------------- | ------------------------------------------------------------ |
| alignment               | topCenter：顶部居中对齐<br />topLeft：顶部左对齐<br />topRight：顶部右对齐<br />center：水平垂直居中对齐<br />centerLeft：垂直居中水平居左对齐<br />centerRight：垂直居中水平居右对齐<br />bottomCenter底部居中对齐<br />bottomLeft：底部居左对齐<br />bottomRight：底部居右对齐 |
| decoration                   | decoration: BoxDecoration( color: Colors.blue,<br /> border: Border.all( color:Colors.red, width: 2.0),<br />borderRadius:BorderRadius.circular((8)),// 圆角<br />boxShadow: [ BoxShadow( color: Colors.blue, offffset: Offffset(2.0, 2.0),blurRadius: 10.0, ) ],<br />gradient: LinearGradient( colors: [Colors.red, Colors.orange], ),///LinearGradient 背景线性渐变 RadialGradient径向渐变 |
| margin                   | margin属性是表示Container与外部其他组件的距离。 EdgeInsets.all(20.0), |
| padding                  | padding就是Container的内边距，指Container边缘与Child之间的距离,padding:EdgeInsets.all(10.0)                                          |
| transform          | 让Container容易进行一些旋转之类的transform: Matrix4.rotationZ(0.2)                          |
| height | 容器高度    |
| width | 容器宽度    |
| child | 容器子元素    |

代码参考[container.dart](./lib/pages/container.dart)

## Text组件

