import 'package:flutter/material.dart';
import 'package:notes/services/data.dart';
import 'package:notes/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';
import 'components/text_field.dart';



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
            CustomAppBar(title: '', isVisible: false),
            ReadingTextField(
              text: data.notes['titles'][index],
              fontWeight: FontWeight.w500,
              fontSize: 30,
            ),
            ReadingTextField(
              text: data.notes['contents'][index],
              fontWeight: FontWeight.w400,
              fontSize: 22,
            ),
          ],
        ),
      )),
    );
  }
}
