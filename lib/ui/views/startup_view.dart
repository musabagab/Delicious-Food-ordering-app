import 'package:delicious/core/viewmodels/startup_model.dart';
import 'package:delicious/ui/shared/app_colors.dart';
import 'package:delicious/ui/shared/text_styles.dart';
import 'package:delicious/ui/views/base_view.dart';
import 'package:delicious/ui/widgets/logo.dart';
import 'package:flutter/material.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<StartupModel>(
      onModelReady: (model) => model.handleStartupLogin(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: primaryColor,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Logo(),
              Text(
                'Delicious',
                style: headerStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
