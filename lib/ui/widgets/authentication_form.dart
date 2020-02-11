import 'package:delicious/core/viewmodels/auth_model.dart';
import 'package:delicious/ui/shared/app_colors.dart';
import 'package:delicious/ui/shared/text_styles.dart';
import 'package:delicious/ui/shared/ui_helpers.dart';
import 'package:delicious/ui/views/base_view.dart';
import 'package:delicious/ui/widgets/forms/login_form.dart';
import 'package:delicious/ui/widgets/forms/register_form.dart';
import 'package:flutter/material.dart';

class AuthenticationForm extends StatefulWidget {
  @override
  _AuthenticationFormState createState() => _AuthenticationFormState();
}

class _AuthenticationFormState extends State<AuthenticationForm> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AuthenticationModel>(
        builder: (context, model, child) => Container(
              width: 300,
              height: 400,
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: SingleChildScrollView(
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                color: model.selectedForm == 'Login'
                                    ? Colors.white
                                    : primaryColor,
                                child: InkWell(
                                  onTap: () {
                                    model.changeSelectedForm();
                                  },
                                  child: Center(
                                    child: Text(
                                      'Login',
                                      style: model.selectedForm == 'Login'
                                          ? TextStyle(
                                              fontSize: 25,
                                              color: primaryColor,
                                              fontWeight: FontWeight.w600)
                                          : TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                color: model.selectedForm == 'Register'
                                    ? Colors.white
                                    : primaryColor,
                                child: InkWell(
                                  onTap: () {
                                    model.changeSelectedForm();
                                  },
                                  child: Center(
                                    child: Text(
                                      'Register',
                                      style: model.selectedForm == 'Register'
                                          ? TextStyle(
                                              fontSize: 25,
                                              color: primaryColor,
                                              fontWeight: FontWeight.w600)
                                          : TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        model.selectedForm == 'Login'
                            ? LoginForm()
                            : RegisterForm(),
                        UIHelper.verticalSpaceSmall(),
                        GestureDetector(
                          onTap: () => model.goBack(),
                          child: Text(
                            'Back to landing page',
                            style: subHeaderStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
