import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Data extends ChangeNotifier{

  String titleData;
  String noteData;

  List<String> titles = [];
  List<String> notes = [];
  List<String> noteTime = [];



  void addTitle(String title) => titleData = title;

  void addBody(String body) => noteData = body;

  void addNote(){
      titles.add(titleData);
      notes.add(noteData);
      var now = DateTime.now();
      String time = '${now.hour}:${now.minute}';
      noteTime.add(time);
      titleData = noteData = '';
      notifyListeners();
  }



  void setData()async{
    final prefs = await SharedPreferences.getInstance();
     prefs.setStringList('titles', titles);
     prefs.setStringList('notes', notes);
     prefs.setStringList('time', noteTime);
  }

  void getData()async{
      final prefs = await SharedPreferences.getInstance();
      titles =  prefs.getStringList('titles') ?? titles;
      notes = prefs.getStringList('notes') ?? notes;
      noteTime = prefs.getStringList('time') ?? noteTime;
      notifyListeners();
  }

  void removeNote(int index)async{
    final prefs = await SharedPreferences.getInstance();
    titles.remove(titles[index]);
    notes.remove(notes[index]);
    noteTime.remove(noteTime[index]);
    notifyListeners();
  }


}





