import 'package:delicious/ui/shared/text_styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final backgroundColor;
  final Function onPressed;
  final String buttonText;
  AppButton({this.backgroundColor, this.onPressed, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Container(
        margin: EdgeInsets.only(left: 50, right: 50, top: 16, bottom: 16),
        width: 200,
        child: Center(
          child: Text(
            buttonText,
            style: subHeaderStyle,
          ),
        ),
      ),
      color: backgroundColor,
    );
  }
}
