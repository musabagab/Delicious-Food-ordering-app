import 'package:delicious/core/enums/view_state.dart';
import 'package:delicious/core/services/authentication_service.dart';
import 'package:delicious/core/services/navigation_service.dart';
import 'package:delicious/core/viewmodels/base_model.dart';
import 'package:delicious/locator.dart';
import 'package:flutter/foundation.dart';

class RegisterModel extends BaseModel {
  AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  NavigationService _navigationService = locator<NavigationService>();

  Future signUp({@required String email, @required String password}) async {
    setState(ViewState.Busy);
    var results = await _authenticationService.signUpWithEmail(
        email: email, password: password);
    setState(ViewState.Idle);
    if (results is bool) {
      if (results) {
        print('Navigate to homeview');
      } else {
        print('Signup failed General');
      }
    } else {
      // firebase message
      print(results);
    }
  }
}
