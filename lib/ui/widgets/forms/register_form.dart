import 'package:delicious/core/enums/view_state.dart';
import 'package:delicious/core/viewmodels/register_model.dart';
import 'package:delicious/ui/shared/app_colors.dart';
import 'package:delicious/ui/shared/ui_helpers.dart';
import 'package:delicious/ui/views/base_view.dart';
import 'package:delicious/ui/widgets/buttons/busy_button.dart';
import 'package:delicious/ui/widgets/forms/apptextform.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _phoneNumberController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _usernameController = TextEditingController();

    return BaseView<RegisterModel>(
        builder: (context, model, child) => Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(12),
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          AppTextForm(
                            textController: _usernameController,
                            hintText: 'Username',
                            iconData: Icons.person,
                            errorMessage: 'Username should not be empty',
                          ),
                          Divider(
                            color: primaryColor,
                          ),
                          AppTextForm(
                            textController: _phoneNumberController,
                            hintText: 'Phone Number',
                            iconData: Icons.call,
                            errorMessage: 'Phone Number should not be empty',
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
                          Divider(
                            color: primaryColor,
                          ),
                          AppTextForm(
                            textController: _emailController,
                            hintText: 'Email',
                            iconData: Icons.email,
                            errorMessage: 'Email should not be empty',
                          ),
                        ],
                      ),
                    ),
                    UIHelper.verticalSpaceMedium(),
                    BusyButton(
                      busy: model.state == ViewState.Busy,
                      title: 'Register',
                      onPressed: () async {
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
              ),
            ));
  }
}
