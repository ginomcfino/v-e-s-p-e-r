import 'package:flutter/material.dart';
import 'package:vesper/Widgets/signalStatDisplay.dart';
import 'package:vesper/Design/stylesheet.dart';
import 'package:vesper/Widgets/cardSection.dart';
import 'package:vesper/Widgets/walletHeader.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            height: 120,
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
    );
  }
}
