import 'package:delicious/ui/widgets/authentication_form.dart';

import 'package:delicious/ui/widgets/background_with_logo.dart';
import 'package:flutter/material.dart';

class AuthView extends StatefulWidget {
  @override
  _AuthViewState createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            BackgroundWithLogo(),
            Positioned(
              left: 80,
              right: 80,
              top: 220,
              child: AuthenticationForm(),
            )
          ],
        ),
      ),
    );
  }
}
