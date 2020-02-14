import 'package:delicious/ui/shared/app_colors.dart';
import 'package:delicious/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class MealCategoryItem extends StatelessWidget {
  final String categoryImageUrl;
  final String categoryName;
  const MealCategoryItem({
    Key key,
    this.categoryImageUrl,
    this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
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
                    backgroundImage: NetworkImage(categoryImageUrl),
                  ),
                  UIHelper.horizontalSpaceSmall(),
                  Text(
                    categoryName,
                    style: TextStyle(color: Colors.black, fontSize: 25),
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
