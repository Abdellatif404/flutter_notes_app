import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../services/data.dart';
import '../home/home.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void getDataAndGoHome() async {
    context.read<Data>().getData();
    context.read<Data>().getTheme();

    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen())
    );
  }

  @override
  void initState() {
    super.initState();
    getDataAndGoHome();
  }

  @override
  Widget build(BuildContext context) {

  var data = Provider.of<Data>(context);

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
