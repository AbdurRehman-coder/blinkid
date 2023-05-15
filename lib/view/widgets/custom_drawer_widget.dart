
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('URL_TO_USER_IMAGE'),
                ),
                SizedBox(height: 10),
                Text(
                  'User Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Wishlist'),
            onTap: () {
              // Handle wishlist tap
            },
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Payment Method'),
            onTap: () {
              // Handle payment method tap
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help Center'),
            onTap: () {
              // Handle help center tap
            },
          ),
          Spacer(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Handle settings tap
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Terms of Conditions'),
            onTap: () {
              // Handle terms of conditions tap
            },
          ),
        ],
      ),
    );
  }
}
