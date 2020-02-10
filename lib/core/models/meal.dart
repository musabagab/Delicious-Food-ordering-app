import 'package:flutter/material.dart';

class Meal {
  final String title;
  final String imageUrl;
  final String price;

  Meal({
    @required this.price,
    @required this.title,
    this.imageUrl,
  });
  Map<String, dynamic> toMap() {
    return {
      title: 'title',
      imageUrl: 'imageUrl',
      price: "price",
    };
  }
}
