import 'package:delicious/ui/shared/app_colors.dart';
import 'package:delicious/ui/shared/ui_helpers.dart';
import 'package:delicious/ui/widgets/app_button.dart';
import 'package:delicious/ui/widgets/background_with_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LandingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          BackgroundWithLogo(),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: RoundedDiagonalPathClipper(),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .70,
                color: Colors.white.withOpacity(.8),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 50,
            right: 50,
            child: Column(
              children: <Widget>[
                AppButton(facebookColor, () {}, 'Login via Facebook'),
                UIHelper.verticalSpaceMedium(),
                AppButton(googleColor, () {}, 'Login via Google'),
                UIHelper.verticalSpaceMedium(),
                AppButton(primaryColor, () {
                  Navigator.of(context).pushNamed('/auth');
                }, 'Login via Email-ID'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
