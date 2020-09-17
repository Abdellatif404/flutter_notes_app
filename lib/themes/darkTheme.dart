import 'package:flutter/material.dart';
import 'colors.dart';



ThemeData darkMode = ThemeData(
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

  cardTheme: CardTheme(color: darkThemeCardColor, shadowColor: darkThemeShadowCard),
  dialogBackgroundColor: darkThemeDialogColor,

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: darkThemeTextColor,
    splashColor: darkThemeFABSplashColor,
    backgroundColor: darkThemePrimaryColor,
  ),

  cursorColor: darkThemePrimaryColor,
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(color: Colors.white24,fontSize: 20),
    filled: true,
    fillColor: darkThemeFillColor,
    enabledBorder: inputBorder,
    focusedBorder: inputBorder,
  ),
);