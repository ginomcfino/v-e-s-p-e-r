import 'package:flutter/material.dart';
import 'package:vesper/Pages/chatPage.dart';
import 'package:vesper/Pages/dashboard.dart';
import 'package:vesper/Pages/personalAccount.dart';
import 'package:vesper/Pages/randomWords.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration:
                BoxDecoration(color: Theme.of(context).primaryColorLight),
            child: Text('V E S P E R'),
          ),
          ListTile(
            title: Text('Dashboard'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),
          ListTile(
            title: Text('Signal Center'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RandomWords()));
            },
          ),
          ListTile(
            title: Text('Group Comms'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChatPage(title: "Comms")));
            },
          ),
          ListTile(
            title: Text('Personal Account'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccountPage()));
            },
          )
        ],
      ),
    );
  }
}
