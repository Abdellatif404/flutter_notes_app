import 'package:flutter/material.dart';
import 'package:notes/services/data.dart';
import 'package:notes/widgets/appbar.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/text_field.dart';



class AddNoteScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var data = context.watch<Data>();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CustomAppBar(title: 'Add Note',icon: FontAwesomeIcons.solidSave,onPressed: (){
              if(data.titleData != '' && data.noteData != ''){
                data.addNote();
                data.setData();
                Navigator.pop(context);
              }
            },),
            AddNoteTextField(maxLines: 1,hintText: 'Title',textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),),
            Flexible(child: AddNoteTextField(maxLines: 50,hintText: 'Note',textStyle: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w400,
            ),)),
          ],
        ),
      ),
    );
  }
}



