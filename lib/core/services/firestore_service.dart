import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delicious/core/models/post.dart';
import 'package:delicious/core/models/user.dart';
import 'package:flutter/services.dart';

class FirestoreService {
  final CollectionReference _usersCollectionReference =
      Firestore.instance.collection("users");
  final CollectionReference _postsCollectionReference =
      Firestore.instance.collection("posts");
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

  Future addPost(Post post) {}
}
