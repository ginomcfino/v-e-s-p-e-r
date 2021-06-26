import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vesper/Design/stylesheet.dart';
import 'package:vesper/Widgets/cardDetails.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            "My Groups",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              physics: PageScrollPhysics(),
              itemBuilder: (context, i) {
                //MasterCard Container Widget
                return Container(
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    boxShadow: customShadow,
                    borderRadius: BorderRadius.circular(20),
                    // border: Border.all(
                    //   width: 3,
                    //   color: Colors.green,
                    //   style: BorderStyle.solid,
                    // ),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                  child: Stack(
                    children: <Widget>[
                      //Bottom Half-Circle
                      Positioned.fill(
                        top: 150,
                        bottom: -200,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: customShadow,
                            shape: BoxShape.circle,
                            color: Colors.white38, //TODO: color
                          ),
                        ),
                      ),
                      //Left Half-Circle
                      Positioned.fill(
                        left: -1 * (MediaQuery.of(context).size.width),
                        top: -100,
                        bottom: -100,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: customShadow,
                            shape: BoxShape.circle,
                            color: Colors.white30, //TODO: color
                          ),
                        ),
                      ),
                      CardDetails() //TODO: make dynamic
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
