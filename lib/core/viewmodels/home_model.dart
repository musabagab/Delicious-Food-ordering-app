import 'package:delicious/core/services/firestore_service.dart';
import 'package:delicious/core/viewmodels/base_model.dart';
import 'package:delicious/locator.dart';

class HomeModel extends BaseModel {
  FirestoreService _firestoreService = locator<FirestoreService>();

  Future getMealsCategories() async {
    try {
      var categories = await _firestoreService.getMealCategories();
      return categories != null;
    } catch (e) {
      return e.message;
    }
  }
}
