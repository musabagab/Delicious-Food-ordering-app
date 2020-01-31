import 'package:delicious/core/constants/routes_path.dart';
import 'package:delicious/core/enums/view_state.dart';
import 'package:delicious/core/services/authentication_service.dart';
import 'package:delicious/core/services/dialog_service.dart';
import 'package:delicious/core/services/navigation_service.dart';
import 'package:delicious/core/viewmodels/base_model.dart';
import 'package:delicious/locator.dart';
import 'package:flutter/foundation.dart';

class RegisterModel extends BaseModel {
  AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  NavigationService _navigationService = locator<NavigationService>();
  DialogService _dialogService = locator<DialogService>();
  Future signUp(
      {@required String email,
      @required String password,
      @required String phoneNumber,
      @required String userName}) async {
    setState(ViewState.Busy);
    var results = await _authenticationService.signUpWithEmail(
        phoneNumber: phoneNumber,
        userName: userName,
        email: email,
        password: password);
    setState(ViewState.Idle);
    if (results is bool) {
      if (results) {
        _navigationService.navigateTo(HomePage);
      } else {
        await _dialogService.showDialog(
            title: 'Register Failed',
            description: 'Make sure you entered a valid information');
      }
    } else {
      // firebase message
      await _dialogService.showDialog(
          title: 'Register Failed', description: results);
      print(results);
    }
  }
}
