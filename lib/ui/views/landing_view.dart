import 'package:delicious/ui/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LandingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Background(),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: RoundedDiagonalPathClipper(),
              child: Container(
                width: double.infinity,
                height: 500,
                color: Colors.white.withOpacity(.7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
