import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _size = 150.0;

    return Center(
      child: new Container(
          width: _size,
          height: _size,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new NetworkImage(
                      "https://www.woolha.com/media/2019/06/buneary.jpg")))),
    );
  }
}
