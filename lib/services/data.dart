import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Data extends ChangeNotifier{


  bool isNight = false;
  String title, content;
  List<String> titles, contents, timeSnapShots;


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


// Add the title of the note from text field to titleData variable
  void addTitle(String value) => title = value;

// Add the body of the note from text field to bodyData variable
  void addContent(String value) => content = value;

  // Create a new note by the given title and body
  void addNote() {
    var now = DateTime.now();
    bool hours = now.hour < 10 ? '0${now.hour}' : now.hour;
    bool minutes = now.minute < 10 ? '0${now.minute}' : now.minute;

    String currentTime = '$hours:$minutes';

    titles.add(title);
    contents.add(content);
    timeSnapShots.add(currentTime);
    title = content = '';
    notifyListeners();
  }



  // Currently I'm saving the notes with shared preferences
  // but I will change this soon
  void setData()async{
    final prefs = await SharedPreferences.getInstance();
     prefs.setStringList('titles', titles);
     prefs.setStringList('contents', contents);
     prefs.setStringList('snapshots', timeSnapShots);
  }

  void getData()async{
      final prefs = await SharedPreferences.getInstance();
      titles =  prefs.getStringList('titles') ?? titles;
      contents = prefs.getStringList('contents') ?? contents;
      timeSnapShots = prefs.getStringList('snapshots') ?? timeSnapShots;
      notifyListeners();
  }

  void removeNote(int index) {
    titles.remove(titles[index]);
    contents.remove(contents[index]);
    timeSnapShots.remove(timeSnapShots[index]);
    notifyListeners();
  }


}





