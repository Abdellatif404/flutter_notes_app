import 'package:flutter/material.dart';
import 'package:notes/data.dart';
import 'package:notes/widgets/appbar.dart';
import 'package:notes/widgets/add_note_widgets/text_field.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../styles.dart';


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
            AddNoteTextField(maxLines: 1,hintText: 'Title',textStyle: titleTextStyle,),
            Flexible(child: AddNoteTextField(maxLines: 50,hintText: 'Note',textStyle: noteTextStyle,)),
          ],
        ),
      ),
    );
  }
}



