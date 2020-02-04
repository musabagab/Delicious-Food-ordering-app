import 'package:delicious/core/viewmodels/home_model.dart';
import 'package:delicious/ui/views/base_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Text('HomeView'),
        ),
      ),
    );
  }
}
