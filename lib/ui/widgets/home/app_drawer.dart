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
        itemExtent: 110,
        shrinkWrap: true,
        children: <Widget>[
          CircleImage(),
          buildDrawerItem('Menu', Icons.restaurant_menu),
          buildDrawerItem('Orders', Icons.view_list),
          buildDrawerItem('Offers', Icons.local_offer),
          buildDrawerItem('Support', Icons.call_end),
          buildDrawerItem('Settings', Icons.settings),
        ],
      ),
    );
  }

  Widget buildDrawerItem(String title, IconData icon) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              icon,
              size: 50,
            ),
          ),
          title: Center(
              child: Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          )),
        ),
      ),
    );
  }
}
