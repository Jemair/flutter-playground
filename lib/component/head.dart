import 'package:flutter/material.dart';
import 'package:flutter_app/common/avatar.dart';
import 'package:flutter_app/common/medal.dart';
import 'package:flutter_app/common/text_ellipsis_box.dart';
import 'package:flutter_app/theme.dart';

class Head extends StatefulWidget {
  @override
  _HeadState createState() => _HeadState();
}

class _HeadState extends State<Head> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildHeadImg(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Avatar(),
              _buildUserName(),
              _buildMedals(),
              _buildVerify(),
              _buildSignature(),
            ],
          ),
        ),
      ],
    );
  }

  // 头图
  _buildHeadImg() {
    return Image(
      image: NetworkImage('https://i2.hdslb.com/bfs/space/d334109495361f107e0edcf77026ba9f9740f536.png@260h_1o.webp'),
      width: double.infinity,
      height: 130.0,
      fit: BoxFit.cover,
    );
  }

  // 用户名、性别、等级
  _buildUserName() {
    return Row(
      children: <Widget>[
        Text(
          '罗伍拾',
          style: TextStyle(
            color: AppTheme.fontColorPrimary,
            fontSize: 18.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Icon(
            IconData(0xe639, fontFamily: 'icon-font'),
            color: AppTheme.fontColorPrimary,
            size: 18.0,
          ),
        )
      ],
    );
  }

  _buildMedals() {
    return Padding(
      padding: EdgeInsets.only(top: 14.0, bottom: 5.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Medal(text: '年度大会员'),
          ),
          Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Medal(
              text: '粉丝勋章',
              type: 'ghost',
            ),
          )
        ],
      ),
    );
  }

  _buildVerify() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Icon(
            IconData(0xe62d, fontFamily: 'icon-font'),
            color: AppTheme.backgroundColorLink,
            size: 16.0,
          ),
        ),
        Text('bilibili认证：这里是称号后缀',
            style: TextStyle(
              fontSize: 12.0,
              color: AppTheme.fontColorAssistantDark,
            ))
      ],
    );
  }

  _buildSignature() {
    return Padding(
      padding: EdgeInsets.only(top: 7.0),
      child: TextEllipsisBoxState(
        '这里是某个人编辑写的个人简介这编辑写的个人简介个这里是某个人编辑写的个人简介这编辑写的个人简介个这里是某个人编辑写的个人简介这编辑写的个人简介个这里是某个人编辑写的个人简介这编辑写的个人简介个这里是某个人编辑写的个人简介这编辑写的个人简介个',
        maxLine: 1,
      ),
    );
  }
}
