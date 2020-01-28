import 'package:delicious/core/viewmodels/auth_model.dart';
import 'package:delicious/ui/shared/app_colors.dart';
import 'package:delicious/ui/shared/text_styles.dart';
import 'package:delicious/ui/views/base_view.dart';
import 'package:flutter/material.dart';

class AuthenticationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<AuthenticationModel>(
        builder: (context, model, child) => Container(
              color: primaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          model.changeSelectedForm();
                        },
                        child: Text(
                          'Login',
                          style: subHeaderStyle,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          model.changeSelectedForm();
                        },
                        child: Text(
                          'Register',
                          style: subHeaderStyle,
                        ),
                      )
                    ],
                  ),
                  model.selectedForm == 'Login'
                      ? Container(
                          child: Text(
                            'LoginForm',
                            style: headerStyle,
                          ),
                        )
                      : Container(
                          child: Text(
                            'Register Form',
                            style: headerStyle,
                          ),
                        )
                ],
              ),
            ));
  }
}
