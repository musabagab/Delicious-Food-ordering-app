import 'dart:async';

import 'package:delicious/core/models/user.dart';
import 'package:delicious/core/services/firestore_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../../locator.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  FirestoreService _firestoreService = locator<FirestoreService>();
  User _currentUser;
  User get currentUser => _currentUser;

  Future loginWithEmail(
      {@required String email, @required String password}) async {
    try {
      var authResults = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      // popular userObject from firestore
      await _popularCurrentUser(authResults.user);
      return authResults.user != null;
    } catch (e) {
      return e.message;
    }
  }

  Future signUpWithEmail(
      {@required String email,
      @required String password,
      @required String phoneNumber,
      @required String userName}) async {
    try {
      var authResult = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      // create user collection in firestore
      _currentUser = User(
          id: authResult.user.uid,
          email: email,
          phoneNumber: phoneNumber,
          userName: userName);
      await _firestoreService.createUser(_currentUser);
      // return results
      return authResult.user != null;
    } catch (e) {
      print(e);
      return e.message;
    }
  }

  Future<bool> isUserLoggedIn() async {
    var user = await _firebaseAuth.currentUser();
    await _popularCurrentUser(user);
    return user != null;
  }

  Future _popularCurrentUser(FirebaseUser user) async {
    if (user != null) {
      _currentUser = await _firestoreService.getUser(user.uid);
    }
  }
}
