import 'package:delicious/ui/widgets/logo.dart';
import 'package:flutter/material.dart';

class BackgroundWithLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Logo(),
      ],
    );
  }
}
