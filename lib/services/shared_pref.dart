import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class SharedPref extends ChangeNotifier{


  bool isNight = false;


  void enableDarkMode(){
    isNight = !isNight;
    notifyListeners();
  }

  void setTheme()async{
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('theme', isNight);
  }

  void getTheme()async{
    final prefs = await SharedPreferences.getInstance();
    bool theme = prefs.getBool('theme');
    isNight = theme ?? isNight;
    notifyListeners();
  }


}