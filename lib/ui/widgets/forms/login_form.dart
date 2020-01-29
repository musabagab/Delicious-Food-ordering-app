import 'package:delicious/core/viewmodels/login_model.dart';
import 'package:delicious/ui/shared/app_colors.dart';
import 'package:delicious/ui/shared/ui_helpers.dart';
import 'package:delicious/ui/views/base_view.dart';
import 'package:delicious/ui/widgets/app_button.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String _emailText;
    String _passwordText;
    return BaseView<LoginModel>(
        builder: (context, model, child) => Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(12),
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email ID',
                            icon: Icon(
                              Icons.email,
                              color: primaryColor,
                            ),
                          ),
                          onSaved: (text) {
                            _emailText = text;
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Email should not be empty';
                            }
                            return null;
                          },
                        ),
                        Divider(
                          color: primaryColor,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.lock,
                              color: primaryColor,
                            ),
                          ),
                          onSaved: (text) {
                            _passwordText = text;
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Password should not be empty';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  UIHelper.verticalSpaceMedium(),
                  AppButton(
                    backgroundColor: primaryColor,
                    buttonText: 'Login',
                    onPressed: () async {
                      _formKey.currentState.save();
                      if (_formKey.currentState.validate()) {
                        print(_emailText);
                        print(_passwordText);
                        model.login(email: _emailText, password: _passwordText);
                      }
                    },
                  )
                ],
              ),
            ));
  }
}
