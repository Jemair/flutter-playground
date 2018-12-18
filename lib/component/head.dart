import 'package:flutter/material.dart';
import 'package:flutter_app/common/avatar.dart';
import 'package:flutter_app/theme.dart';

class Head extends StatefulWidget {
  @override
  _HeadState createState() => _HeadState();
}

class _HeadState extends State<Head> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildHeadImg(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: <Widget>[
              Avatar(),
              _buildUserName(),
            ],
          ),
        ),
      ],
    );
  }

  _buildHeadImg() {
    return Image(
      image: NetworkImage('https://i2.hdslb.com/bfs/space/d334109495361f107e0edcf77026ba9f9740f536.png@260h_1o.webp'),
      width: double.infinity,
      height: 130.0,
      fit: BoxFit.cover,
    );
  }

  _buildUserName() {
    return Row(
      children: <Widget>[
        Text(
          '罗伍拾',
          style: TextStyle(
            color: AppTheme.primaryColor,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
