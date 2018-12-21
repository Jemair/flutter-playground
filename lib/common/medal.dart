import 'package:flutter/material.dart';
import 'package:flutter_app/theme.dart';

class Medal extends StatelessWidget {
  Medal({@required this.text, this.type = 'primary'});

  final text;
  final type;

  final buttonStyleMap = {
    'primary': {
      'color': AppTheme.backgroundColorPrimary,
      'textColor': AppTheme.backgroundColor
    },
    'ghost': {
      'color': AppTheme.backgroundColor,
      'textColor': AppTheme.fontColorPrimary
    },
  };

  @override
  Widget build(BuildContext context) {
    final buttonType = buttonStyleMap[this.type];
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: AppTheme.backgroundColorPrimary,
        ),
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 0.0),
        minWidth: 0.0,
        height: 14.0,
        onPressed: null,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Text(
          text,
          style: TextStyle(color: buttonType['textColor'], fontSize: 10.0),
        ),
        color: buttonType['color'],
      ),
    );
  }
}
