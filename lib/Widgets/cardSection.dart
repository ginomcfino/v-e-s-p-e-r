import 'package:flutter/material.dart';
import 'package:vesper/Design/stylesheet.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("Selected Card"),
        Expanded(child: ListView.builder(
          itemBuilder: (context, i) {
            return Container(
              decoration: BoxDecoration(
                color: primaryColor,
                boxShadow: customShadow,
                borderRadius: BorderRadius.circular(7),
              ),
            );
          },
        ))
      ],
    );
  }
}
