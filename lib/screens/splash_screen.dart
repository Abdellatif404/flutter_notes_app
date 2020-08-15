import 'package:flutter/material.dart';
import 'package:notes/styles.dart';
import 'package:animated_widgets/animated_widgets.dart';
import 'package:notes/data.dart';
import 'package:notes/screens/home.dart';
import 'package:provider/provider.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    context.read<Data>().getData();
    goHome();
  }

Future goHome()async{
  await Future.delayed(Duration(seconds: 5));
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => HomeScreen())
  );
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: OpacityAnimatedWidget.tween(
          child: Image(
            image: AssetImage('images/logo.png'),
            height: 260,
          ),
        ),
      ),
    );
  }
}
