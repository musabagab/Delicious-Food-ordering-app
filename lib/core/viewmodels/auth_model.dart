import 'package:delicious/core/services/navigation_service.dart';
import 'package:delicious/core/viewmodels/base_model.dart';

import '../../locator.dart';

class AuthenticationModel extends BaseModel {
  String selectedForm = 'Login';
  final NavigationService _navigationService = locator<NavigationService>();
  void changeSelectedForm() {
    if (selectedForm == 'Login') {
      selectedForm = 'Register';
    } else {
      selectedForm = 'Login';
    }
    notifyListeners();
  }

  void goBack() {
    _navigationService.goBack();
  }
}
