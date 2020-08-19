import 'package:flutter/material.dart';
import 'package:notes/styles.dart';
import 'package:notes/screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:notes/data.dart';

import 'data.dart';
import 'styles.dart';

void main() => runApp(
    ChangeNotifierProvider(
      create: (context) => Data(),
      child: NotesApp(),
    ),
);

class NotesApp extends StatelessWidget {



  ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: backgroundColorLight,
    ////// Text Theme //////
    fontFamily: 'Poppins',
    textTheme: TextTheme(
      ////// Title Page
        bodyText2: TextStyle(color: primaryColorLight),
        ////// Dialog subtitle and text field and card title
        subtitle1: TextStyle(color: textColorLight),
        ////// Body of the card note
        caption: TextStyle(color: textColorLight)),
    ////// Icon
    highlightColor: primaryColorLight.withOpacity(0.05),
    splashColor: primaryColorLight.withOpacity(0.05),
    iconTheme: IconThemeData(color: primaryColorLight),
    primaryIconTheme: IconThemeData(color: Color(0xFF3A3A3A)),
    ////// Card
    cardTheme: CardTheme(shadowColor: Color(0xff73c7fc).withOpacity(0.3),color: Color(0xffFAFDFF)),
//    dialogBackgroundColor: Color(0xFF332F39),
    ////// FAB //////
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: backgroundColorLight,
      splashColor: Color(0xFF00C1FF),
      backgroundColor: primaryColorLight,
    ),
    ////// Input Decoration
    cursorColor: primaryColorLight,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.black45,fontSize: 20),
      filled: true,
      fillColor: Color(0xFFF4F8FB),
      enabledBorder: inputBorder,
      focusedBorder: inputBorder,
    ),
  );


  ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: backgroundColorDark,
    primaryColor: Color(0xFF2E2E33),
    ////// Text Theme //////
    fontFamily: 'Poppins',
    textTheme: TextTheme(
        ////// Title Page
        bodyText2: TextStyle(color: primaryColorDark),
        ////// Dialog subtitle and text field and card title
        subtitle1: TextStyle(color: textColorDark),
        ////// Body of the card note
        caption: TextStyle(color: textColorDark)),
    ////// Icon //////
    highlightColor: Colors.white.withOpacity(0.05),
    splashColor: Colors.white.withOpacity(0.05),
    iconTheme: IconThemeData(color: primaryColorDark),
    primaryIconTheme: IconThemeData(color: textColorDark),
    ////// Card //////
    cardTheme: CardTheme(shadowColor: Color(0xFF36323B),color: Color(0xFF302E3F)),
    dialogBackgroundColor: Color(0xFF302E3F),
    ////// FAB //////
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: textColorDark,
      splashColor: Color(0xFF3EC0DA),
      backgroundColor: primaryColorDark,
    ),
    ////// Input Decoration //////
    cursorColor: primaryColorDark,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.white24,fontSize: 20),
      filled: true,
      fillColor: Color(0xFF313142),
      enabledBorder: inputBorder,
      focusedBorder: inputBorder,
    ),
  );


  @override
  Widget build(BuildContext context) {
    var data = context.watch<Data>();

    return MaterialApp(
      title: 'WiNote',
      home: SplashScreen(),
      theme: data.isNight ? darkMode : lightMode,
      debugShowCheckedModeBanner: false,
    );
  }
}
