import 'package:delicious/core/viewmodels/auth_model.dart';
import 'package:get_it/get_it.dart';

import 'core/services/authentication_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // register services
  locator.registerLazySingleton(() => AuthenticationService());
  // register the viewmodels
  locator.registerFactory(() => AuthenticationModel());
}
