import 'package:delicious/core/viewmodels/base_model.dart';

class AuthenticationModel extends BaseModel {
  String selectedForm = 'Login';

  void changeSelectedForm() {
    if (selectedForm == 'Login') {
      selectedForm = 'Register';
    } else {
      selectedForm = 'Login';
    }
    notifyListeners();
  }
}
