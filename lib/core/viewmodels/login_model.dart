import 'package:delicious/core/enums/view_state.dart';
import 'package:delicious/core/services/authentication_service.dart';
import 'package:delicious/core/services/dialog_service.dart';
import 'package:delicious/core/viewmodels/base_model.dart';
import 'package:flutter/cupertino.dart';

import '../../locator.dart';

class LoginModel extends BaseModel {
  AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  DialogService _dialogService = locator<DialogService>();

  Future login({@required String email, @required String password}) async {
    setState(ViewState.Busy);
    var results = await _authenticationService.loginWithEmail(
        email: email, password: password);
    setState(ViewState.Idle);
    if (results is bool) {
      if (results) {
        print('dialog called');
        var dialogResult = await _dialogService.showDialog();
        print('dialog closed');
        print('Navigate to homeview');
      } else {
        print('Login failed General');
      }
    } else {
      // firebase message
      print(results);
    }
  }
}
