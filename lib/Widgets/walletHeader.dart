import 'package:flutter/material.dart';
import 'package:vesper/design/constants.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Aurelius' Account",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                boxShadow: customShadow,
                color: primaryColor,
                shape: BoxShape.circle),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        shape: BoxShape.circle),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: primaryColor, shape: BoxShape.circle),
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.add_alarm_rounded,
                    color: Theme.of(context).primaryColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
