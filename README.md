# FlutterStudy

本笔记是学习B站上大地老师的[视频课程](https://www.bilibili.com/video/BV1S4411E7LY?p=2&vd_source=7f3fdd89d8f49319865d708ed0bc9d3c)

视频课程中有一部分dart学习，这一部分我没有做笔记。

本项目使用的dart版本为：2.19.5，flutter版本为： 3.7.8

## Flutter介绍

Flutter是谷歌公司开发的一款开源、免费的UI框架，可以快速的在Android和iOS上构建高质量App。

它最大的特点就是跨平台、以及高性能。 目前 Flutter 已经支持 iOS、Android、Web、Windows、macOS、Linux等。

Flutter 官网：https://flutter.dev/

Flutter Packages官网：https://pub.dev/

## Flutter目录结构介绍

![1.png](./static/1.png)

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

__常用属性：__

- appBar（显示在界面顶部的一个 AppBar）
- body（当前界面所显示的主要内容 Widget）
- drawer（抽屉菜单控件）

基本使用代码[main.dart](./lib/main.dart)

## 自定义组件使用

在Flutter中自定义组件其实就是一个类，这个类需要继承StatelessWidget/StatefulWidget

StatelessWidget 是无状态组件，状态不可变的widget

StatefulWidget 是有状态组件，持有的状态可能在widget生命周期改变

代码[first_app.dart](./lib/pages/first_app.dart)

## Container组件

| 名称              | 功能                                                        |
| --------------------- | ------------------------------------------------------------ |
| alignment               | topCenter：顶部居中对齐<br />topLeft：顶部左对齐<br />topRight：顶部右对齐<br />center：水平垂直居中对齐<br />centerLeft：垂直居中水平居左对齐<br />centerRight：垂直居中水平居右对齐<br />bottomCenter底部居中对齐<br />bottomLeft：底部居左对齐<br />bottomRight：底部居右对齐 |
| decoration          | decoration: BoxDecoration( color: Colors.blue,<br />border: Border.all( color:Colors.red, width: 2.0),<br />borderRadius:BorderRadius.circular((8)),// 圆角<br />boxShadow: [ BoxShadow( color: Colors.blue, offffset: Offffset(2.0, 2.0),blurRadius: 10.0, ) ],<br />gradient: LinearGradient( colors: [Colors.red, Colors.orange], ),///LinearGradient 背景线性渐变 RadialGradient径向渐变 |
| margin                   | margin属性是表示Container与外部其他组件的距离。 EdgeInsets.all(20.0), |
| padding                  | padding就是Container的内边距，指Container边缘与Child之间的距离<br />padding:EdgeInsets.all(10.0)                                          |
| transform          | 让Container容易进行一些旋转之类的transform: Matrix4.rotationZ(0.2)                          |
| height | 容器高度    |
| width | 容器宽度    |
| child | 容器子元素    |

代码[container.dart](./lib/pages/container.dart)

## Text组件

| 名称              | 功能                                                        |
| --------------------- | ------------------------------------------------------------ |
| textAlign               | 文本对齐方式（center居中，left左对齐，right右对齐，justfy两端对齐） |
| textDirection                   | 文本方向（ltr从左至右，rtl从右至左） |
| overflow                   | 文字超出屏幕之后的处理方式（clip裁剪，fade渐隐，ellipsis省略号） |
| textScaleFactor                  | 字体显示倍率                                         |
| maxLines          | 文字显示最大行数                          |
| style | 字体的样式设置    |

__TextStyle的参数:__

| 名称              | 功能                                                        |
| --------------------- | ------------------------------------------------------------ |
| decoration               | 文字装饰线（none没有线，lineThrough删除线，overline上划线，underline下划线） |
| decorationColor                   | 文字装饰线颜色 |
| decorationStyle                   | 文字装饰线风格（[dashed,dotted]虚线，double两根线，solid一根实线，wavy波浪线） |
| wordSpacing                  | 单词间隙（如果是负值，会让单词变得更紧凑）                                         |
| letterSpacing          | 字母间隙（如果是负值，会让字母变得更紧凑）                          |
| fontStyle | 文字样式（italic斜体，normal正常体）    |
| fontSize | 字体大小   |
| color | 字体颜色   |
| fontWeight | 字体粗细（bold粗体，normal正常体）   |

更多参数：https://docs.flutter.io/flutter/painting/TextStyle-class.html

代码[text.dart](./lib/pages/text.dart)

## 图片组件

Flutter中可以通过Image组件来加载并显示图片,Image的数据源可以是asset、文件、内存以及网络。

__Image组件的常用属性:__

| 名称              | 功能                                                        |
| --------------------- | ------------------------------------------------------------ |
| alignment               | 图片的对齐方式 |
| color和colorBlendMode    | 设置图片的背景颜色，通常和colorBlendMode配合一起使用，这样可以是图片颜色和背景色混合 |
| fit                   | fit属性用来控制图片的拉伸和挤压，这都是根据父容器来的。<br />BoxFit.fill:全图显示，图片会被拉伸，并充满父容器。<br />BoxFit.contain:全图显示，显示原比例，可能会有空隙。<br />BoxFit.cover：显示可能拉伸，可能裁切，充满（图片要充满整个容器，还不变形）。 <br />BoxFit.fitWidth：宽度充满（横向充满），显示可能拉伸，可能裁切。 <br />BoxFit.fitHeight ：高度充满（竖向充满）,显示可能拉伸，可能裁切。<br />BoxFit.scaleDown：效果和contain差不多，但是此属性不允许显示超过源图片大小，可小不可大。 |
| repeat           | ImageRepeat.repeat : 横向和纵向都进行重复，直到铺满整<br />ImageRepeat.repeatX: 横向重复，纵向不重复。<br />ImageRepeat.repeatY：纵向重复，横向不重复。 |
| width    | 宽度 一般结合ClipOval才能看到效果 |
| height | 高度 一般结合ClipOval才能看到效果 |

更多属性参考：https://api.flflutter.dev/flflutter/widgets/Image-class.html

### Image.network加载网络图片

加载网络图片，圆形图片的实现方式代码[image.dart](./lib/pages/image.dart)

### Image.assert加载本地图片

1. 项目根目录新建images文件夹,images中新建2.x 3.x对应的文件

![2.png](./static/2.png)

2. 然后，打开pubspec.yaml声明一下添加的图片文件

![3.png](./static/3.png)

具体代码[image.dart](./lib/pages/image.dart)

## Icon图标

### 下载字体图标

字体图标下载地址：https://www.iconfont.cn/

把需要下载的字体图标加入到购物车中，然后点击下载代码进行下载

![4.png](./static/4.png)

### 导入字体图标

1. 项目根目录新建fonts文件夹,将下载的压缩包解压，将ttf文件和json文件放入fonts文件夹下

   ![5.png](./static/5.png)

2. 打开pubspec.yaml配置字体路径

   ![6.png](./static/6.png)

3. 编写字体图标类加载代码[fonts.dart](./lib/fonts.dart)
4. 使用字体类代码[icon.dart](./lib/pages/icon.dart)

## ListView列表组件

列表布局是我们项目开发中最常用的一种布局方式。

Flutter中我们可以通过ListView来定义列表项，支持垂直和水平方向展示。

__列表组件常用参数：__

| 名称              | 功能                                                        |
| --------------------- | ------------------------------------------------------------ |
| scrollDirection               | Axis.horizontal水平列表Axis.vertical垂直列表 |
| padding    | 内边距 |
| resolve                   | 组件反向排序 |
| children           |列表元素 |

__具体使用:__

1. 垂直列表代码[listview1.dart](./lib/pages/listview1.dart)
2. 图标列表代码[listview2.dart](./lib/pages/listview2.dart)
3. 图文列表代码[listview3.dart](./lib/pages/listview3.dart)
4. 水平列表代码[listview4.dart](./lib/pages/listview4.dart)
5. 动态列表代码[listview5.dart](./lib/pages/listview5.dart)

## GirdView网格组件

__GridView常用属性：__

| 名称              | 功能                                                        |
| --------------------- | ------------------------------------------------------------ |
| scrollDirection               | 滚动方法 |
| padding    | 内边距 |
| resolve                   | 组件反向排序 |
| children           |列表元素 |
| crossAxisSpacing           |水平子Widget之间间距 |
| mainAxisSpacing           |垂直子Widget之间间距 |
| crossAxisCount           |一行的Widget数量，用在GridView.count |
| maxCrossAxisExtent           |横轴子元素的最大长度， 用在GridView.extent |
| childAspectRatio           |子Widget宽高比例 |
| gridDelegate           |控制布局主要用在GridView.builder里面，值有SliverGridDelegateWithFixedCrossAxisCount和SliverGridDelegateWithMaxCrossAxisExtent |

1. GridView.count实现网格布局代码[gridview1.dart](./lib/pages/gridview1.dart)
2. GridView.extent实现网格布局代码[gridview2.dart](./lib/pages/gridview2.dart)
3. GridView实现动态列表代码[gridview3.dart](./lib/pages/gridview3.dart)

## Padding组件

Flutter中很多Widget是没有padding属性。

这个时候就可以用Padding组件处理容器与子元素之间的间距。

__属性：__

| 名称              | 功能                                                        |
| --------------------- | ------------------------------------------------------------ |
| padding               | padding值, EdgeInsetss设置填充的值 |
| child    | 子组件 |

代码[padding.dart](./lib/pages/padding.dart)

## 线性布局Row和Column

__属性：__

| 名称              | 功能                                                        |
| --------------------- | ------------------------------------------------------------ |
| mainAxisAlignment               | 主轴的排序方式 |
| crossAxisAlignment    | 次轴的排序方式 |
| children                   | 组件子元素 |

1. Row布局代码[row.dart](./lib/pages/row.dart)
2. Column布局代码[column.dart](./lib/pages/column.dart)

## 弹性布局

Flex组件可以通过属性direction设置子组件的排列方向是横向还是纵向。

使用Row或Column也可以实现Flex的效果，因为Row和Column都继承自 Flex ，参数基本相同。

Flex和Expanded组件配合实现弹性布局 。

1. Flex和Expanded配合使用代码[flex_expanded.dart](./lib/pages/flex_expanded.dart)
2. Column和Row结合Expanded案例代码[expanded_case.dart](./lib/pages/expanded_case.dart)

## 层叠布局（Stack、Align、Positioned）

### Stack

Stack可以实现组件之间堆叠显示

__常用属性：__

| 名称              | 功能                                                        |
| --------------------- | ------------------------------------------------------------ |
| alignment               | 设置子元素的显示位置 |
| children                   | 组件子元素 |

### Positioned

Positioned组件可以控制每个子元素的显示位置

__常用属性：__

| 名称              | 功能                                                        |
| --------------------- | ------------------------------------------------------------ |
| top               | 子元素距离顶部的距离 |
| bottom               | 子元素距离底部的距离 |
| left               | 子元素距离左侧距离 |
| right                   | 子元素距离右侧距离 |
| child                   | 子组件 |

### Align

Align设置子元素相对于父容器的位置

__常用属性：__

| 名称              | 功能                                                        |
| --------------------- | ------------------------------------------------------------ |
| alignment               | 设置子元素的显示位置  |
| children                   | 组件子元素 |

__代码示例：__
1. Stack使用代码[stack.dart](./lib/pages/stack.dart)
2. Stack和Positioned配合使用代码[stack_positioned.dart](./lib/pages/stack_positioned.dart)
3. Stack和Align配置使用代码
