import 'package:delicious/core/constants/routes_path.dart' as routes;
import 'package:delicious/core/enums/view_state.dart';
import 'package:delicious/core/services/authentication_service.dart';
import 'package:delicious/core/services/dialog_service.dart';
import 'package:delicious/core/services/navigation_service.dart';
import 'package:delicious/core/viewmodels/base_model.dart';
import 'package:flutter/cupertino.dart';

import '../../locator.dart';

class LoginModel extends BaseModel {
  AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  DialogService _dialogService = locator<DialogService>();
  NavigationService _navigationService = locator<NavigationService>();

  Future login({@required String email, @required String password}) async {
    setState(ViewState.Busy);
    var results = await _authenticationService.loginWithEmail(
        email: email, password: password);
    setState(ViewState.Idle);
    if (results is bool) {
      if (results) {
        _navigationService.navigateTo(routes.HomePage);
      } else {
        await _dialogService.showDialog(
            title: 'Login Failed',
            description: 'Check your email and password');
      }
    } else {
      // firebase message
      _dialogService.showDialog(title: 'Login Failed', description: 'faield');
      print(results);
    }
  }
}
