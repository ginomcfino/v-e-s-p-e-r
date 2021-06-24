import 'package:flutter/material.dart';
import 'package:vesper/Design/stylesheet.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("My Groups"),
        Expanded(
            child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                    width: MediaQuery.of(context).size.width - 20,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        boxShadow: customShadow,
                        borderRadius: BorderRadius.circular(20)),
                  );
                }))
      ],
    );
  }
}
