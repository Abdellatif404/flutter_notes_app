import 'package:flutter/material.dart';
import 'package:notes/styles.dart';
import 'package:animated_widgets/animated_widgets.dart';
import 'package:notes/data.dart';
import 'package:notes/screens/home.dart';
import 'package:provider/provider.dart';

import '../data.dart';


class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    context.read<Data>().getData();
    context.read<Data>().getTheme();
    goHome();
  }

Future goHome()async{
  await Future.delayed(Duration(seconds: 4));
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => HomeScreen())
  );
}

  @override
  Widget build(BuildContext context) {
  var data = context.watch<Data>();

    return Scaffold(
      body: Center(
        child: OpacityAnimatedWidget.tween(
          child: Image(
            image: AssetImage(data.isNight ? 'images/dark_mode_logo.png' :
            'images/logo.png'),
            height: 260,
          ),
        ),
      ),
    );
  }
}
