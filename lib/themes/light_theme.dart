import 'package:flutter/material.dart';
import 'colors.dart';



ThemeData lightTheme = ThemeData(
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


  cardTheme: CardTheme(
    elevation: 10,
    margin: EdgeInsets.all(6),
    color: cardColor,
    shadowColor: shadowCard,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),


  dialogTheme: DialogTheme(
    backgroundColor: dialogColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
  ),


  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: backgroundColor,
    splashColor: fabSplashColor,
    backgroundColor: primaryColor,
  ),


  cursorColor: primaryColor,
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(
      fontSize: 20,
      color: Colors.black45,
      fontWeight: FontWeight.w500,
    ),
    filled: true,
    fillColor: fillColor,
    enabledBorder: inputBorder,
    focusedBorder: inputBorder,
  ),
);