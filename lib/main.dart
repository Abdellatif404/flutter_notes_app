import 'package:flutter/material.dart';
import 'package:notes/services/data.dart';
import 'package:provider/provider.dart';
import 'screens/intro/intro.dart';
import 'themes/darkTheme.dart';
import 'themes/lightTheme.dart';



void main() => runApp(
    ChangeNotifierProvider(
      create: (context) => Data(),
      child: MyApp(),
    ),
);


class MyApp extends StatelessWidget {
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
