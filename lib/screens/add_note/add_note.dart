import 'package:flutter/material.dart';
import 'package:notes/services/data.dart';
import 'package:notes/widgets/custom_appbar.dart';
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
            CustomAppBar(
              title: 'Add Note',
              icon: FontAwesomeIcons.solidSave,
              onPressed: () {
                if (data.title != '' && data.content != '') {
                  data.addNote();
                  Navigator.pop(context);
                }
              },
            ),
            AddingTextField(maxLines: 1, hintText: 'Title'),
            Flexible(child: AddingTextField(maxLines: 50, hintText: 'Note')),
          ],
        ),
      ),
    );
  }
}
