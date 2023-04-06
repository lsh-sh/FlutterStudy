import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  void _alertDialog() async {
    var result = await showDialog(
        barrierDismissible: false, //表示点击灰色背景的时候是否消失弹出框
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("提示信息!"),
            content: const Text("您确定要删除吗?"),
            actions: [
              TextButton(
                child: const Text("取消"),
                onPressed: () {
                  Navigator.pop(context, 'Cancle');
                },
              ),
              TextButton(
                child: const Text("确定"),
                onPressed: () {
                  Navigator.pop(context, "Ok");
                },
              )
            ],
          );
        });

    // 输出dialog点击的结果
    print(result);
  }

  void _simpleDialog() async {
    var result = await showDialog(
        barrierDismissible: true, //表示点击灰色背景的时候是否消失弹出框
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text("请选择内容"),
            children: [
              SimpleDialogOption(
                child: const Text("Option A"),
                onPressed: () {
                  Navigator.pop(context, "A");
                },
              ),
              const Divider(),
              SimpleDialogOption(
                child: const Text("Option B"),
                onPressed: () {
                  Navigator.pop(context, "B");
                },
              ),
              const Divider(),
              SimpleDialogOption(
                child: const Text("Option C"),
                onPressed: () {
                  Navigator.pop(context, "C");
                },
              ),
            ],
          );
        });
    print(result);
  }

  void _showModalBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 220,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: const Text("分享 A"),
                  onTap: () {
                    Navigator.pop(context, "分享 A");
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text("分享 B"),
                  onTap: () {
                    Navigator.pop(context, "分享 B");
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text("分享 C"),
                  onTap: () {
                    Navigator.pop(context, "分享 C");
                  },
                )
              ],
            ),
          );
        });
    print(result);
  }

  void _showFlutterToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog使用'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: _alertDialog, child: const Text('AlertDialog')),
            ElevatedButton(
                onPressed: _simpleDialog, child: const Text('SimpleDialog')),
            ElevatedButton(
                onPressed: _showModalBottomSheet,
                child: const Text('showModalBottomSheet')),
            ElevatedButton(
                onPressed: _showFlutterToast,
                child: const Text('showFlutterToast')),
          ],
        ),
      ),
    );
  }
}
