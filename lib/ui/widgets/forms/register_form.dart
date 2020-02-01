import 'package:delicious/core/enums/view_state.dart';
import 'package:delicious/core/viewmodels/register_model.dart';
import 'package:delicious/ui/shared/app_colors.dart';
import 'package:delicious/ui/shared/ui_helpers.dart';
import 'package:delicious/ui/views/base_view.dart';
import 'package:delicious/ui/widgets/buttons/busy_button.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController,
        _phoneNumberController,
        _passwordController,
        _usernameController = TextEditingController();
    return BaseView<RegisterModel>(
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
                          controller: _usernameController,
                          decoration: buildInputDecoration(
                              hintText: 'Username', iconData: Icons.person),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Username should not be empty';
                            }
                            return null;
                          },
                        ),
                        Divider(
                          color: primaryColor,
                        ),
                        TextFormField(
                          decoration: buildInputDecoration(
                              hintText: 'Phone number', iconData: Icons.phone),
                          controller: _phoneNumberController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Phone number should not be empty';
                            }
                            return null;
                          },
                        ),
                        Divider(
                          color: primaryColor,
                        ),
                        TextFormField(
                          decoration: buildInputDecoration(
                              hintText: 'Password', iconData: Icons.lock),
                          controller: _passwordController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Password should not be empty';
                            }
                            return null;
                          },
                        ),
                        Divider(
                          color: primaryColor,
                        ),
                        TextFormField(
                          decoration: buildInputDecoration(
                              hintText: 'Email', iconData: Icons.email),
                          controller: _emailController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Email should not be empty';
                            }
                            return null;
                          },
                        )
                      ],
                    ),
                  ),
                  UIHelper.verticalSpaceMedium(),
                  BusyButton(
                    busy: model.state == ViewState.Busy,
                    title: 'Register',
                    onPressed: () async {
                      // save the results
                      _formKey.currentState.save();
                      // check if validated
                      if (_formKey.currentState.validate()) {
                        model.signUp(
                            email: _emailController.text,
                            password: _passwordController.text,
                            userName: _usernameController.text,
                            phoneNumber: _phoneNumberController.text);
                      }
                    },
                  )
                ],
              ),
            ));
  }

  InputDecoration buildInputDecoration({String hintText, IconData iconData}) {
    return InputDecoration(
      hintText: hintText,
      border: InputBorder.none,
      icon: Icon(
        iconData,
        color: primaryColor,
      ),
    );
  }
}
