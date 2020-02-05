import 'package:delicious/core/viewmodels/home_model.dart';
import 'package:delicious/ui/views/base_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Menu')),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Text('Meal1'),
              Text('Meal2'),
              Text('Meal 3'),
              Text('Meal4'),
            ],
          ),
        ),
        body: SafeArea(
          child: Text('HomeView'),
        ),
      ),
    );
  }
}
