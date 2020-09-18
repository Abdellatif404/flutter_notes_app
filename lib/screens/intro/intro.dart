import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../services/data.dart';
import '../home/home.dart';



class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  var data = Provider.of<Data>(context);
  Future goHome() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen())
    );
  }

  context.select((Data data) => data.getData());
  context.select((Data data) => data.getTheme());
  goHome();

    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage(
              data.isNight ? 'images/dark_mode_logo.png' : 'images/logo.png'),
          height: 260,
        ),
      ),
    );
  }
}
