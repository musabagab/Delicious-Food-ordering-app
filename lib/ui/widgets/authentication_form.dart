import 'package:delicious/core/viewmodels/auth_model.dart';
import 'package:delicious/ui/views/base_view.dart';
import 'package:flutter/material.dart';

class AuthenticationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<AuthenticationModel>(
        builder: (context, model, child) => Container(
              child: Text('FORM DATA'),
            ));
  }
}
