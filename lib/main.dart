import 'package:flutter/material.dart';
import 'package:notes/styles.dart';
import 'package:notes/screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:notes/data.dart';



void main() => runApp(NotesApp());

class NotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => Data(),
      child: MaterialApp(
        title: 'WiNote',
        home: SplashScreen(),
        theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: backgroundColor,
          highlightColor: primaryColor.withOpacity(0.05),
          splashColor: primaryColor.withOpacity(0.05),
          cursorColor: primaryColor,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            splashColor: Color(0xFF00C1FF),
            backgroundColor: primaryColor,
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
