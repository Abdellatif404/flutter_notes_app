import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';


class Data extends ChangeNotifier {

  String title = '';
  String content = '';
  Map<String, List<String>> notes = {
    'titles': [],
    'contents': [],
    'timeSnapShots': [],
  };

  void addTitle(String value) => title = value;

  void addContent(String value) => content = value;

  /// Create a new note by the given title and content.
  void addNote() {
    var now = DateTime.now();
    String hours = now.hour < 10 ? '0${now.hour}' : '${now.hour}';
    String minutes = now.minute < 10 ? '0${now.minute}' : '${now.minute}';

    String currentTime = '$hours:$minutes';

    notes['titles'].add(title);
    notes['contents'].add(content);
    notes['timeSnapShots'].add(currentTime);
    title = content = '';
    notifyListeners();
    writeFile();
  }


  void removeNote(int index) {
    notes['titles'].remove(notes['titles'][index]);
    notes['contents'].remove(notes['contents'][index]);
    notes['timeSnapShots'].remove(notes['timeSnapShots'][index]);
    notifyListeners();
    writeFile();
  }



  Future<String> appPath() async {
    final document = await getApplicationDocumentsDirectory();
    return document.path;
  }


  Future<File> appFile() async {
    final path = await appPath();
    return File('$path/data.txt');
  }


  Future writeFile() async {
    final file = await appFile();

    /// The vertical bar help us split data when reading the file
    Future saveData = file.writeAsString(
        '${notes['titles']}|${notes['contents']}|${notes['timeSnapShots']}');

    return saveData;
  }


  Future readFile() async {
    final file = await appFile();

    List data = (await file.readAsString()).split('|');

    /// I called the (replaceAll) here because when we save list as
    /// string the '[' and ']' of lists also saved with it.
    notes['titles'] =
        data[0].replaceAll('[', '').replaceAll(']', '').split(',');
    notes['contents'] =
        data[1].replaceAll('[', '').replaceAll(']', '').split(',');
    notes['timeSnapShots'] =
        data[2].replaceAll('[', '').replaceAll(']', '').split(',');

    notifyListeners();
  }
}
