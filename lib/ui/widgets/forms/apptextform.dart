import 'package:delicious/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextForm extends StatelessWidget {
  const AppTextForm(
      {Key key,
      this.textController,
      this.hintText,
      this.iconData,
      this.errorMessage,
      this.focusNode});

  final TextEditingController textController;
  final String hintText;
  final IconData iconData;
  final String errorMessage;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      decoration: buildInputDecoration(hintText: hintText, iconData: iconData),
      controller: textController,
      validator: (value) => validateField(value, errorMessage),
    );
  }

  InputDecoration buildInputDecoration({String hintText, IconData iconData}) {
    return InputDecoration(
      hintText: hintText,
      border: InputBorder.none,
      icon: Icon(
        iconData,
        color: primaryColor,
      ),
    );
  }

  String validateField(String value, String errorMessage) {
    if (value.isEmpty) {
      return errorMessage;
    }
    return null;
  }
}
