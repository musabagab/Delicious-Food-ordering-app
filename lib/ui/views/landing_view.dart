import 'package:delicious/ui/shared/app_colors.dart';
import 'package:delicious/ui/shared/text_styles.dart';
import 'package:delicious/ui/shared/ui_helpers.dart';
import 'package:delicious/ui/widgets/background.dart';
import 'package:delicious/ui/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LandingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Background(),
          Logo(),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: RoundedDiagonalPathClipper(),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .70,
                color: Colors.white.withOpacity(.85),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 50,
            right: 50,
            child: Column(
              children: <Widget>[
                AppButton(facebookColor, () {}, 'Login Via Facebook'),
                UIHelper.verticalSpaceMedium(),
                AppButton(primaryColor, () {}, 'Login Via Email'),
                UIHelper.verticalSpaceMedium(),
                AppButton(googleColor, () {}, 'Login Via Google'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AppButton extends StatelessWidget {
  final backgroundColor;
  final Function _onPressed;
  final String buttonText;
  AppButton(this.backgroundColor, this._onPressed, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: _onPressed,
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
