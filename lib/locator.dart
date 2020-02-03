import 'package:delicious/core/services/dialog_service.dart';
import 'package:delicious/core/services/firestore_service.dart';
import 'package:delicious/core/services/navigation_service.dart';
import 'package:delicious/core/viewmodels/auth_model.dart';
import 'package:delicious/core/viewmodels/home_model.dart';
import 'package:delicious/core/viewmodels/register_model.dart';
import 'package:delicious/core/viewmodels/startup_model.dart';
import 'package:get_it/get_it.dart';

import 'core/services/authentication_service.dart';
import 'core/viewmodels/login_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // register services
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => FirestoreService());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  // register the viewmodels
  locator.registerFactory(() => StartupModel());
  locator.registerFactory(() => LoginModel());
  locator.registerFactory(() => RegisterModel());
  locator.registerFactory(() => HomeModel());
  locator.registerFactory(() => AuthenticationModel());
}
