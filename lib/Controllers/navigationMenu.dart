import 'package:flutter/material.dart';
import 'package:vesper/Controllers/bottomNavigation.dart';
import 'package:vesper/Pages/chatPage.dart';
import 'package:vesper/Pages/dashboard.dart';
import 'package:vesper/Pages/personalAccount.dart';
import 'package:vesper/Pages/randomWords.dart';
import 'package:vesper/Pages/welcome/welcomePage.dart';
import 'package:vesper/main.dart';

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
                BoxDecoration(color: Theme.of(context).colorScheme.primary),
            child: Text('V E S P E R'),
          ),
          ListTile(
            title: Text('Personal Account'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccountPage()));
            },
          ),
          ListTile(
            title: Text('Dashboard'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Hmmm2()));
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
            title: Text('Bottom Nav'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyStatefulWidget()));
            },
          ),
          ListTile(
            title: Text('Secret Santa'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProviderScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Working Page'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WelcomeScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Hmmm extends StatelessWidget {
  const Hmmm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.lightGreen, Colors.lightBlue],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dynamic Future"),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}

class SurpriseSurprie extends StatelessWidget {
  const SurpriseSurprie({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Surprise Surprise'),
      ),
      drawer: Navigation(),
      body: Center(
        child: Container(
          child: Center(child: Text("Aha!")),
          color: Colors.red[900],
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
