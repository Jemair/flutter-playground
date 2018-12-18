import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0.0, -12.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: 64.0,
            height: 64.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(32.0),
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i1.hdslb.com/bfs/face/288a6207aaa610694e01ac499a032c525a4c6c07.jpg@120w_120h_1o_1s.webp'),
            ),
          ),
          Positioned(
            width: 18.0,
            height: 18.0,
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              backgroundImage: NetworkImage('http://s1.hdslb.com/bfs/static/jinkela/space-h5/asserts/member.ea97493.png'),
            ),
          )
        ],
      ),
    );
  }
}
