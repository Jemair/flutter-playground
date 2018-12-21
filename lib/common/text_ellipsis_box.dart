import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.setState(() {
          isFolded = !isFolded;
        });
      },
      child: Text(widget.text, style: widget.textStyle, maxLines: isFolded ? widget.maxLine : null),
    );
  }
}
