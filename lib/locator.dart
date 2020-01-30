import 'package:delicious/core/services/navigation_service.dart';
import 'package:delicious/core/viewmodels/auth_model.dart';
import 'package:delicious/core/viewmodels/register_model.dart';
import 'package:get_it/get_it.dart';

import 'core/services/authentication_service.dart';
import 'core/viewmodels/login_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // register services
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => NavigationService());
  // register the viewmodels
  locator.registerFactory(() => LoginModel());
  locator.registerFactory(() => RegisterModel());
  locator.registerFactory(() => AuthenticationModel());
}
