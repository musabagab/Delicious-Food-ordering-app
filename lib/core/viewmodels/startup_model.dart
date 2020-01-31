import 'package:delicious/core/services/authentication_service.dart';
import 'package:delicious/core/services/navigation_service.dart';
import 'package:delicious/core/viewmodels/base_model.dart';
import 'package:delicious/locator.dart';

class StartupModel extends BaseModel {
  AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future handleStartupLogin() {}
}
