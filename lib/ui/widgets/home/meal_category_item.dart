import 'package:delicious/ui/shared/app_colors.dart';
import 'package:delicious/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class MealCategoryItem extends StatelessWidget {
  const MealCategoryItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                  ),
                  UIHelper.horizontalSpaceSmall(),
                  Text(
                    'Snacks',
                  ),
                ],
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: primaryColor,
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
