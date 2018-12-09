import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('通知中心', style: TextStyle(
          color: Colors.black
        ),),
        leading: IconButton(icon: Icon(Icons.close, color: Colors.black,), onPressed: () => Navigator.maybePop(context)),
      ),
      body: SamplePageContent(),
    );
  }
}

class SamplePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 0),
          child: Column(
            children: <Widget>[
              MassageNotify(),
            ],
          ),
        ),
        Positioned.fill(
          top: null,
          bottom: 0,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1.0)),
            ),
          ),
        )
      ],
    );
  }
}

class MassageNotify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: <Widget>[
        Expanded(
          flex: 0,
          child: Container(
            width: 60,
            height: 60,
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i1.hdslb.com/bfs/face/288a6207aaa610694e01ac499a032c525a4c6c07.jpg'),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(left: 10.0),
              padding: EdgeInsets.all(30.0),
              child: Text('你有一条新信息你有一条新信息你有一条新信息你有一条新信息你有一条新信息', style: TextStyle(
                fontSize: 20.0,
              ),
                softWrap: true,),
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://github.com/yang7229693/flutter-study/blob/master/demo/3.%20Flutter%E5%B8%83%E5%B1%80/flutter_layout_demo/assets/images/publish_chat_box.png?raw=true'))
              ),
            )
        ),
      ],
    );
  }
}
