import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/theme.dart';

class TextEllipsisBoxState extends StatefulWidget {
  TextEllipsisBoxState(this.text, {@required this.maxLine, this.textStyle});

  final String text;
  final int maxLine;
  final TextStyle textStyle;

  @override
  _TextEllipsisBoxStateState createState() => _TextEllipsisBoxStateState();
}

class _TextEllipsisBoxStateState extends State<TextEllipsisBoxState> {
  var isFolded = true;
  final TapGestureRecognizer recognizer = TapGestureRecognizer();

  _buildExpand() {
    print(isFolded);
    if (!isFolded) return Text('');
    return GestureDetector(
      onTap: () {
        this.setState(() {
          isFolded = !isFolded;
        });
      },
      child: Text(
        '展开',
        style: TextStyle(color: AppTheme.fontColorLink),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    recognizer.onTap = () {
      this.setState(() {
        this.isFolded = true;
      });
    };
    return Row(
      children: <Widget>[
        Expanded(
          child: RichText(
            text: TextSpan(text: widget.text, style: TextStyle(color: Colors.black), children: <TextSpan>[
              TextSpan(text: ' 折叠', style: TextStyle(color: AppTheme.fontColorLink), recognizer: recognizer,)
            ]),
            maxLines: isFolded ? widget.maxLine : null,
          ),
        ),
        _buildExpand(),
      ],
    );
  }
}
