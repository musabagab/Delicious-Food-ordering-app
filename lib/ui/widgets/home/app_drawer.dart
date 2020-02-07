import 'package:delicious/ui/widgets/home/user_image.dart';
import 'package:flutter/material.dart';

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
