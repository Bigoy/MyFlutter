import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      title: 'HOME',
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Home'),
      ),
      body: _buildImageList(context),
      bottomNavigationBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                size: 24,
              ),
              label: '首页'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search, size: 24), label: '搜索'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings, size: 24), label: '设置')
        ],
      ),
    );
  }

  Widget _buildImageList(BuildContext context) {
    return ListView(
      children: [
        _buildRow(context, 'a'),
        _buildRow(context, 'b'),
        _buildRow(context, 'c'),
        _buildRow(context, 'd'),
        _buildRow(context, 'e'),
      ],
    );
  }

  Widget _buildRow(BuildContext context, data) {
    final textStyle = TextStyle(fontSize: 22, color: CupertinoColors.label);
    return DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Colors.orange[700]]),
          //背景渐变
          borderRadius: BorderRadius.circular(3.0),
          //3像素圆角
          boxShadow: [
            //阴影
            BoxShadow(
                color: Colors.black54,
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0)
          ]),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(data, style: textStyle),
      ),
    );
  }
}
