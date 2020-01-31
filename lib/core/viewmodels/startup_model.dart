import 'package:delicious/core/services/authentication_service.dart';
import 'package:delicious/core/services/navigation_service.dart';
import 'package:delicious/core/viewmodels/base_model.dart';
import 'package:delicious/locator.dart';
import '../constants/routes_path.dart' as routes;

class StartupModel extends BaseModel {
  AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future handleStartupLogin() async {
    var hasloggedInUser = await _authenticationService.isUserLoggedIn();
    if (hasloggedInUser) {
      _navigationService.navigateTo(routes.HomePage);
    } else {
      _navigationService.navigateTo(routes.LandingPage);
    }
  }
}
