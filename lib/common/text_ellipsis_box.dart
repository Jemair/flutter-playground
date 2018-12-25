import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/theme.dart';

class TextEllipsisBoxState extends StatefulWidget {
  TextEllipsisBoxState(this.text, {
    @required this.maxLine,
    this.textStyle,
    this.expandText
  });

  final String text;
  final int maxLine;
  final TextStyle textStyle;
  final Text expandText;

  @override
  _TextEllipsisBoxStateState createState() => _TextEllipsisBoxStateState();
}

class _TextEllipsisBoxStateState extends State<TextEllipsisBoxState> {
  var isFolded = true;
  final TapGestureRecognizer recognizer = TapGestureRecognizer();

  Widget _getExpandText() {
    if (widget.expandText != null) { return widget.expandText; }
    return Text(
      '展开',
      style: TextStyle(color: AppTheme.fontColorLink),
    );
  }

  int _getMaxLine() {
    if (isFolded) { return widget.maxLine; }
    return 9999;
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
            maxLines: _getMaxLine(),
            overflow: TextOverflow.fade,
          ),
        ),
        _buildExpand(),
      ],
    );
  }

  _buildExpand() {
    if (!isFolded) return Container();
    return GestureDetector(
      onTap: () {
        this.setState(() {
          isFolded = !isFolded;
        });
      },
      child: _getExpandText(),
    );
  }
}
