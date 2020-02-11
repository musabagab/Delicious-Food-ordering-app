import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delicious/core/models/meal.dart';
import 'package:delicious/core/models/user.dart';
import 'package:flutter/services.dart';

class FirestoreService {  
  final CollectionReference _usersCollectionReference =
      Firestore.instance.collection("users");
  final CollectionReference _mealsCollectionReference =
      Firestore.instance.collection("meals");
  Future createUser(User user) async {
    try {
      await _usersCollectionReference.document(user.id).setData(user.toJson());
    } catch (e) {
      return e.message;
    }
  }

  Future getUser(String uid) async {
    try {
      var user = await _usersCollectionReference.document(uid).get();
      return User.fromData(user.data);
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }
      return e.toString();
    }
  }

  Future addMeal(Meal meal) async {
    try {
      await _mealsCollectionReference.add(meal.toMap());
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }
      return e.toString();
    }
  }
}
