import 'package:flutter/material.dart';
import 'colors.dart';



ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: darkThemeBackgroundColor,
  highlightColor: darkThemeSplashColor,
  splashColor: darkThemeSplashColor,


  fontFamily: 'Poppins',
  textTheme: TextTheme(
      bodyText2: TextStyle(color: darkThemePrimaryColor),
      subtitle1: TextStyle(color: darkThemeTextColor),
      caption: TextStyle(color: darkThemeTextColor),
  ),


  iconTheme: IconThemeData(color: darkThemePrimaryColor),
  primaryIconTheme: IconThemeData(color: darkThemeTextColor),


  cardTheme: CardTheme(
    elevation: 10,
    margin: EdgeInsets.all(6),
    color: darkThemeCardColor,
    shadowColor: darkThemeShadowCard,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),


  dialogTheme: DialogTheme(
      backgroundColor: darkThemeDialogColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),


  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: darkThemeTextColor,
    splashColor: darkThemeFABSplashColor,
    backgroundColor: darkThemePrimaryColor,
  ),


  cursorColor: darkThemePrimaryColor,
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(
      fontSize: 20,
      color: Colors.white24,
      fontWeight: FontWeight.w500,
    ),
    filled: true,
    fillColor: darkThemeFillColor,
    enabledBorder: inputBorder,
    focusedBorder: inputBorder,
  ),
);