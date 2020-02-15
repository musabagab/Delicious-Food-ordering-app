import 'package:delicious/core/viewmodels/home_model.dart';
import 'package:delicious/ui/shared/text_styles.dart';

import 'package:delicious/ui/views/base_view.dart';
import 'package:delicious/ui/widgets/home/app_drawer.dart';
import 'package:delicious/ui/widgets/home/meal_category_item.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      onModelReady: (model) => model.getMealsCategories(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Align(
            alignment: Alignment.center,
            child: Text(
              'Menu',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        drawer: AppDrawer(),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(5),
            children: <Widget>[
              MealCategoryItem(
                categoryImageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQjpMLfzv7GLFxbtHXyCSER4PgA1nQ-kCWK4Ie_2xPEy3gJjo-S',
                categoryName: 'Snacks',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
