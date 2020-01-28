import 'package:delicious/core/viewmodels/auth_model.dart';
import 'package:delicious/ui/shared/text_styles.dart';
import 'package:delicious/ui/views/base_view.dart';
import 'package:flutter/material.dart';

class AuthenticationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<AuthenticationModel>(
        builder: (context, model, child) => Container(
              child: Column(
                children: <Widget>[
                  Row(
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
                  Center(
                    child: Container(
                      child: Text(
                        model.selectedForm,
                        style: headerStyle,
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
