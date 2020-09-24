import 'package:flutter/material.dart';
import 'package:notes/services/data.dart';
import 'package:notes/services/shared_pref.dart';
import 'package:provider/provider.dart';
import 'screens/intro/intro.dart';
import 'themes/dark_theme.dart';
import 'themes/light_theme.dart';



void main() => runApp(
    MultiProvider(
      child: MyApp(),
      providers: [
        ChangeNotifierProvider(create: (context) => Data()),
        ChangeNotifierProvider(create: (context) => SharedPref(),),
      ],
    ),
);


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = context.watch<SharedPref>();

    return MaterialApp(
      title: 'WiNote',
      home: SplashScreen(),
      theme: data.isNight ? darkTheme : lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
