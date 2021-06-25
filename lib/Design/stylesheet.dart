import 'package:flutter/material.dart';

//0xFF350A4E)
Color primaryColor = Color(0xFFCADCED);

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


// /* 
//   Copped Shrine theme
// */

// ThemeData buildShrineTheme() {
//   final ThemeData base = ThemeData.light();
//   return base.copyWith(
//     colorScheme: _shrineColorScheme,
//     toggleableActiveColor: shrinePink400,
//     accentColor: shrineBrown900,
//     primaryColor: shrinePink100,
//     primaryColorLight: shrinePink100,
//     buttonColor: shrinePink100,
//     scaffoldBackgroundColor: shrineBackgroundWhite,
//     cardColor: shrineBackgroundWhite,
//     // ignore: deprecated_member_use
//     textSelectionColor: shrinePink100,
//     errorColor: shrineErrorRed,
//     buttonTheme: ButtonThemeData(
//       colorScheme: _shrineColorScheme.copyWith(primary: shrinePink400),
//       textTheme: ButtonTextTheme.normal,
//     ),
//     primaryIconTheme: _customIconTheme(base.iconTheme),
//     textTheme: _buildShrineTextTheme(base.textTheme),
//     primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
//     accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
//     iconTheme: _customIconTheme(base.iconTheme),
//   );
// }

// IconThemeData _customIconTheme(IconThemeData original) {
//   return original.copyWith(color: shrineBrown900);
// }

// TextTheme _buildShrineTextTheme(TextTheme base) {
//   return base
//       .copyWith(
//         caption: base.caption?.copyWith(
//           fontWeight: FontWeight.w400,
//           fontSize: 14,
//           letterSpacing: defaultLetterSpacing,
//         ),
//         button: base.button?.copyWith(
//           fontWeight: FontWeight.w500,
//           fontSize: 14,
//           letterSpacing: defaultLetterSpacing,
//         ),
//       )
//       .apply(
//         fontFamily: 'Circular',
//         displayColor: shrineBrown900,
//         bodyColor: shrineBrown900,
//       );
// }

// const ColorScheme _shrineColorScheme = ColorScheme(
//   primary: shrinePink100,
//   primaryVariant: shrineBrown900,
//   secondary: shrinePink50,
//   secondaryVariant: shrineBrown900,
//   surface: shrineSurfaceWhite,
//   background: shrineBackgroundWhite,
//   error: shrineErrorRed,
//   onPrimary: shrineBrown900,
//   onSecondary: shrineBrown900,
//   onSurface: shrineBrown900,
//   onBackground: shrineBrown900,
//   onError: shrineSurfaceWhite,
//   brightness: Brightness.light,
// );

// const Color shrinePink50 = Color(0x578EE02F);
// const Color shrinePink100 = Color(0xFF770F77);
// const Color shrinePink300 = Color(0xFF69F0AE);
// const Color shrinePink400 = Color(0xFF8100EA);

// const Color shrineBrown900 = Color(0xFF3BA000);
// const Color shrineBrown600 = Color(0xFF7D4F52);

// const Color shrineErrorRed = Color(0xFFC5032B);

// const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
// const Color shrineBackgroundWhite = Colors.white;

// const defaultLetterSpacing = 0.03;
