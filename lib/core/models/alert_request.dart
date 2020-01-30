import 'package:flutter/widgets.dart';

class AlertRequest {
  final String title;
  final String description;
  final String buttonTitle;

  AlertRequest({
    @required this.title,
    @required this.description,
    @required this.buttonTitle,
  });
}
