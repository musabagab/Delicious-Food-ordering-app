import 'package:delicious/core/services/authentication_service.dart';
import 'package:delicious/core/viewmodels/base_model.dart';

import '../../locator.dart';

class AuthenticationModel extends BaseModel {
  AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  void signUp() async {
    var results = await _authenticationService.signUpWithEmail(
        email: 'musab@gmail.com', password: 'mnma1993');
    print(results);
  }
}
