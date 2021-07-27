import 'package:flutter/material.dart';
import 'package:vesper/Controllers/navigationMenu.dart';
import 'package:vesper/design/constants.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[200],
        title: Text(
          'My Profile',
          style: TextStyle(color: Colors.lightGreenAccent),
        ),
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      drawer: Navigation(),
      body: SafeArea(
        bottom: false,
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.white,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.deepPurple,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
