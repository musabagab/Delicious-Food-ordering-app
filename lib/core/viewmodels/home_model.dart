import 'package:delicious/core/services/authentication_service.dart';
import 'package:delicious/core/viewmodels/base_model.dart';

import '../../locator.dart';

class HomeModel extends BaseModel {
  AuthenticationService _authenticationService =
      locator<AuthenticationService>();
}
