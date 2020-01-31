import 'package:delicious/core/viewmodels/startup_model.dart';
import 'package:delicious/ui/views/base_view.dart';
import 'package:delicious/ui/widgets/logo.dart';
import 'package:flutter/material.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<StartupModel>(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Logo(),
        ),
      ),
    );
  }
}
