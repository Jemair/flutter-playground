import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {
  const SamplePage();

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

class SamplePageContent extends StatefulWidget {
  @override
  _SamplePageContentState createState() => _SamplePageContentState();
}

class _SamplePageContentState extends State<SamplePageContent> {
  var _msg = <String>[];

  void _concatMsg(String val) {
    setState(() {
      _msg.add(val);
    });
  }

  TextEditingController _textController = TextEditingController();
  FocusNode _inputFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    print(_msg);
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 0),
            child: Column(
              children: <Widget>[
                MassageNotify(msg: _msg),
              ],
            ),
          ),
          Positioned.fill(
            top: null,
            bottom: 0,
            child: TextField(
              controller: _textController,
              focusNode: _inputFocus,
              decoration: InputDecoration(
                  labelText: '请输入',
                  hintText: '输入尼玛',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1.0)),
                  suffixIcon: IconButton(icon: Icon(Icons.send, color: Colors.blue,),
                      onPressed: () {
                        _concatMsg(_textController.text);
                        _textController.clear();
                      })
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MassageNotify extends StatelessWidget {
  MassageNotify({ Key key, this.msg }): super(key: key);
  List<String> msg;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: msg.map((i) {
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
                    child: Text(i, style: TextStyle(
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
        }).toList(),
      ),
    );

    /*Flex(
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
              child: Text(msg[0], style: TextStyle(
                fontSize: 20.0,
              ),
                softWrap: true,),
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://github.com/yang7229693/flutter-study/blob/master/demo/3.%20Flutter%E5%B8%83%E5%B1%80/flutter_layout_demo/assets/images/publish_chat_box.png?raw=true'))
              ),
            )
        ),
      ],
    );*/
  }
}
