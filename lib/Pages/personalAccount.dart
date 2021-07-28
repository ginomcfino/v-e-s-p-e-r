import 'package:flutter/material.dart';
import 'package:vesper/Controllers/navigationMenu.dart';
import 'package:vesper/Widgets/signalStatSection.dart';
import 'package:vesper/Widgets/cardSection.dart';
import 'package:vesper/Widgets/walletHeader.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'V-E-S-P-E-R',
          style: TextStyle(color: Theme.of(context).buttonColor),
        ),
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).canvasColor,
      drawer: Navigation(),
      body: Stack(children: [
        Column(
          children: <Widget>[
            //SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: WalletHeader(),
            ),
            Expanded(
              child: CardSection(),
            ),
            Expanded(
              child: StatDisplay(),
            )
          ],
        ),
      ]),
    );
  }
}
