import 'package:flutter/material.dart';
import 'package:flutter_app/component/head.dart';
import 'package:flutter_app/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  var _showAppBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: <Widget>[
          Head(),
        ],
      ),
    );
  }

  _buildAppBar() {
    if (!_showAppBar) { return null; }
    return AppBar(
        title: Center(
          child: Text('Bilibili'),
        ),
        backgroundColor: AppTheme.primaryColor,
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          IconButton(
            icon: Icon(Icons.mail_outline, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ]);
  }
}
