import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vesper/Design/stylesheet.dart';
import 'package:vesper/Widgets/cardDetails.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            "My Groups",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                //MasterCard Container Widget
                return Container(
                  width: MediaQuery.of(context).size.width - 20,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    boxShadow: customShadow,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: <Widget>[
                      //Bottom Half-Circle
                      Positioned.fill(
                        left: 0,
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
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            boxShadow: customShadow,
                            shape: BoxShape.circle,
                            color: Colors.white38, //TODO: color
                            // border: Border.all(
                            //   width: 3,
                            //   color: Colors.green,
                            //   style: BorderStyle.solid,
                            // ),
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
