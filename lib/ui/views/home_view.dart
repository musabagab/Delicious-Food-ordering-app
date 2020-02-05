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
              Card(
                child: ListTile(
                  leading: Icon(Icons.restaurant_menu),
                  title: Text('Menu'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.view_list),
                  title: Text('My Orders'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.local_offer),
                  title: Text('Offers'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.call_end),
                  title: Text('Support'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ),
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
