import 'package:flutter/material.dart';
import 'package:vesper/Data/signalStats.dart';
import 'package:vesper/design/constants.dart';
import 'package:vesper/Widgets/pieChart.dart';

class StatDisplay extends StatelessWidget {
  const StatDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
        child: IntrinsicHeight(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "My Signals: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      // decoration: BoxDecoration(
                      //   color: primaryColor,
                      //   boxShadow: customShadow,
                      //   borderRadius: BorderRadius.circular(20),
                      //   border: Border.all(
                      //     width: 3,
                      //     color: primaryColor,
                      //     style: BorderStyle.solid,
                      //   ),
                      // ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: enteredSignals
                            .map(
                              (e) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      //TODO: change neuro effect for colored shadows
                                      decoration: BoxDecoration(
                                        boxShadow: customShadow,
                                        //color: primaryColor,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 1,
                                          color: primaryColor,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: pieColors[
                                            enteredSignals.indexOf(e)],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(e["name"]),
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: PieChart(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
