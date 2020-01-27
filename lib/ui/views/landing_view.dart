import 'package:delicious/ui/shared/app_colors.dart';
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
            bottom: 120,
            left: 50,
            right: 50,
            child: Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  child: Text('Login via Email'),
                  color: primaryColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
