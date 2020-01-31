import 'package:delicious/core/constants/routes_path.dart';
import 'package:delicious/core/services/navigation_service.dart';
import 'package:delicious/locator.dart';
import 'package:delicious/ui/router.dart';
import 'package:delicious/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/managers/dialog_manager.dart';
import 'core/models/user.dart';
import 'core/services/authentication_service.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>(
      initialData: User.initial(),
      builder: (context) => locator<AuthenticationService>().userController,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Delicious',
        theme: ThemeData(primaryColor: primaryColor),
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
      ),
    );
  }
}
