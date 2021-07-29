import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vesper/design/constants.dart';
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
                return Stack(
                  children: [
                    // Positioned.fill(
                    //   left: -1 * (MediaQuery.of(context).size.width),
                    //   top: -100,
                    //   bottom: -100,
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       boxShadow: customShadow,
                    //       shape: BoxShape.circle,
                    //       color: Theme.of(context)
                    //           .colorScheme
                    //           .secondary, //TODO: color
                    //     ),
                    //   ),
                    // ),
                    Container(
                      width: MediaQuery.of(context).size.width - 30,
                      decoration: BoxDecoration(
                        color: Theme.of(context).buttonColor,
                        boxShadow: customShadow,
                        borderRadius: BorderRadius.circular(20),
                        // border: Border.all(
                        //   width: 5,
                        //   color: Theme.of(context).buttonColor,
                        //   style: BorderStyle.solid,
                        // ),
                      ),
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 30),
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
                                color:
                                    Theme.of(context).cardColor, //TODO: color
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
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondary, //TODO: color
                              ),
                            ),
                          ),
                          CardDetails() //TODO: make dynamic
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }
}

class NewCardSection extends StatelessWidget {
  const NewCardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
