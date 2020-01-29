import 'package:delicious/core/viewmodels/login_model.dart';
import 'package:delicious/ui/shared/app_colors.dart';
import 'package:delicious/ui/views/base_view.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
    @required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginModel>(
        builder: (context, model, child) => Form(
              key: _formKey,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email ID',
                        icon: Icon(
                          Icons.email,
                          color: primaryColor,
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        icon: Icon(
                          Icons.lock,
                          color: primaryColor,
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ));
  }
}
