import 'package:flutter/material.dart';

//0xFF350A4E)
Color primaryColor = Color(0xFFCADCED);
Color secondaryColor = Colors.yellowAccent.withOpacity(0.3);
Color bgColor = Colors.blue.shade900.withOpacity(.2);
const cardBgColor = Colors.deepPurple;

const defaultPadding = 20.0;

const kPrimaryColor = Color(0xFF18B66C);
const kSecondaryColor = Color(0xFF0096FA);
const kContentColorLightTheme = Color(0xFF2C1D35);
const kContentColorDarkTheme = Color(0xFFC4E69F);
const kWarninngColor = Color(0xFFF3BB1C);
const kErrorColor = Color(0xFFF03738);

const kDefaultPadding = 20.0;

List pieColors = [
  Colors.indigo.shade400,
  Colors.blue.shade600,
  Colors.green.shade700,
  Colors.amber.shade400,
  Colors.deepOrange,
  Colors.brown,
];

List<BoxShadow> customShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(0.5),
    spreadRadius: 4,
    offset: Offset(-2, -2),
    blurRadius: 15,
  ),
  BoxShadow(
    color: Colors.blue.shade900.withOpacity(.2),
    spreadRadius: 4,
    offset: Offset(6, 6),
    blurRadius: 10,
  ),
];
