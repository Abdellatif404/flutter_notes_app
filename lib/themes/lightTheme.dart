import 'package:flutter/material.dart';
import 'colors.dart';




ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: backgroundColor,
  highlightColor: splashColor,
  splashColor: splashColor,

  fontFamily: 'Poppins',
  textTheme: TextTheme(
      bodyText2: TextStyle(color: primaryColor),
      subtitle1: TextStyle(color: textColor),
      caption: TextStyle(color: textColor),
  ),

  iconTheme: IconThemeData(color: primaryColor),
  primaryIconTheme: IconThemeData(color: iconColor),

  cardTheme: CardTheme(color: cardColor, shadowColor: shadowCard),
  dialogBackgroundColor: dialogColor,

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: backgroundColor,
    splashColor: fabSplashColor,
    backgroundColor: primaryColor,
  ),

  cursorColor: primaryColor,
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(color: Colors.black45,fontSize: 20),
    filled: true,
    fillColor: fillColor,
    enabledBorder: inputBorder,
    focusedBorder: inputBorder,
  ),
);