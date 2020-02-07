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
        drawer: new AppDrawer(),
        body: SafeArea(
          child: Text('HomeView'),
        ),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          CircleImage(),
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
    );
  }
}

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
