import 'package:delicious/core/constants/routes_path.dart';
import 'package:delicious/core/services/navigation_service.dart';
import 'package:delicious/locator.dart';
import 'package:delicious/ui/router.dart';
import 'package:delicious/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

import 'core/managers/dialog_manager.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delicious',
      theme: ThemeData(primaryColor: primaryColor, accentColor: primaryColor),
      builder: (context, widget) => Navigator(
        // the dialog manager will be avaialbe to all widgets
        onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (context) => DialogManager(
            child: widget,
          ),
        ),
      ),
      initialRoute: StartUpPage,
      onGenerateRoute: Router.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
