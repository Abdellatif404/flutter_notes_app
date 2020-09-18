import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/screens/add_note/add_note.dart';
import 'components/list_view.dart';
import 'components/appbar.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            HomeAppBar(),
            CustomListView(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.plus),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddNoteScreen())),
      ),
    );
  }
}



