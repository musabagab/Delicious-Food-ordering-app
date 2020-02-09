import 'package:delicious/core/viewmodels/home_model.dart';
import 'package:delicious/ui/views/base_view.dart';
import 'package:delicious/ui/widgets/home/app_drawer.dart';
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
        drawer: AppDrawer(),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Text('Data 1,'),
              Text('Data 2,'),
              Text('Data 3,'),
              Text('Data 4,'),
            ],
          ),
        ),
      ),
    );
  }
}
