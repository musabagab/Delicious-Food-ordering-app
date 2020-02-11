import 'package:delicious/core/enums/view_state.dart';
import 'package:delicious/core/viewmodels/login_model.dart';
import 'package:delicious/ui/shared/app_colors.dart';
import 'package:delicious/ui/shared/ui_helpers.dart';
import 'package:delicious/ui/views/base_view.dart';
import 'package:delicious/ui/widgets/buttons/busy_button.dart';
import 'package:delicious/ui/widgets/forms/apptextform.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return BaseView<LoginModel>(
        builder: (context, model, child) => Form(
              key: _formKey,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(12),
                    color: Colors.white,
                    child: Wrap(
                      children: <Widget>[
                        AppTextForm(
                          textController: _emailController,
                          hintText: 'Email',
                          iconData: Icons.email,
                          errorMessage: 'Email should not be empty',
                        ),
                        Divider(
                          color: primaryColor,
                        ),
                        AppTextForm(
                          textController: _passwordController,
                          hintText: 'Password',
                          iconData: Icons.lock,
                          errorMessage: 'Password should not be empty',
                        ),
                      ],
                    ),
                  ),
                  UIHelper.verticalSpaceMedium(),
                  BusyButton(
                    title: 'Login',
                    busy: model.state == ViewState.Busy,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        model.login(
                            email: _emailController.text.trim(),
                            password: _passwordController.text..trim());
                      }
                    },
                  )
                ],
              ),
            ));
  }
}
