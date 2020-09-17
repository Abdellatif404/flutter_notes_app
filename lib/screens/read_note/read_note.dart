
import 'package:flutter/material.dart';
import '../../services/data.dart';
import 'package:notes/widgets/appbar.dart';
import 'package:provider/provider.dart';

import 'components/read_note_text_field.dart';


class ReadNoteScreen extends StatelessWidget {
  final int index;
  ReadNoteScreen(this.index);

  @override
  Widget build(BuildContext context) {
    var data = context.watch<Data>();

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
        children: <Widget>[
          CustomAppBar(title: '',visibility: false,),
            ReadNoteTextField(
              text: data.titles[index],
              fontWeight: FontWeight.w500,
              fontSize: 30,
            ),
            ReadNoteTextField(
              text: data.notes[index],
              fontWeight: FontWeight.w400,
              fontSize: 22,
            ),
        ],
      ),
          )),
    );
  }
}



