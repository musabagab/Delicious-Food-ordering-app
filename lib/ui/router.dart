import 'package:delicious/core/constants/routes_path.dart' as routes;
import 'package:delicious/ui/views/auth_view.dart';
import 'package:delicious/ui/views/home_view.dart';
import 'package:delicious/ui/views/landing_view.dart';
import 'package:delicious/ui/views/startup_view.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routes.LandingPage:
        return MaterialPageRoute(builder: (_) => LandingView());
      case routes.AuthPage:
        return MaterialPageRoute(builder: (_) => AuthView());
      case routes.StartUpPage:
        return MaterialPageRoute(builder: (_) => StartupView());
      case routes.HomePage:
        return MaterialPageRoute(builder: (_) => HomeView());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
