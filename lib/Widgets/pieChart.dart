import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vesper/Data/signalStats.dart';
import 'package:vesper/Design/stylesheet.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    if (_height > _width) {
      _height = _width;
    } else {
      _width = _height;
    }
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        //margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        width: _width * 2 / 3,
        height: _height * 2 / 3,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: primaryColor,
          boxShadow: customShadow,
        ),
        child: Stack(
          children: [
            CustomPaint(
              child: Container(),
              foregroundPainter: PieChartPainter(),
            ),
            Center(
              child: Container(
                width: _width * 1 / 4,
                height: _height * 1 / 4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor,
                  boxShadow: customShadow,
                ),
                child: Center(
                    child: Text(
                  "6 Buys",
                  style: TextStyle(fontWeight: FontWeight.w800),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 4, size.height / 4);

    Paint paint = new Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = radius * 2;

    double total = 0;
    enteredSignals.forEach((element) {
      total += element["entry"];
    });

    var startRadian = -pi / 2;
    for (int i = 0; i < enteredSignals.length; i++) {
      var currentSignal = enteredSignals[i];
      var sweepRadian = (currentSignal["entry"] / total) * 2 * pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
