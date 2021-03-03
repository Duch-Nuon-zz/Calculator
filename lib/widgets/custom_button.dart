import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final Color color;
  final double borderRadius;
  final String text;
  final Color textColor;
  final Function callBack;
  CustomFlatButton({
    this.color,
    this.borderRadius,
    this.text,
    this.textColor,
    this.callBack,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: FlatButton(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 25.0,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          color: color,
          onPressed: () {
            callBack(text);
          },
        ),
      ),
    );
  }
}
