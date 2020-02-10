import 'package:flutter/material.dart';

class Post {
  final String title;
  final String imageUrl;
  final String userId;

  Post({
    @required this.userId,
    @required this.title,
    this.imageUrl,
  });
  Map<String, dynamic> toMap() {
    return {
      title: 'title',
      imageUrl: 'imageUrl',
      userId: 'userId',
    };
  }
}
