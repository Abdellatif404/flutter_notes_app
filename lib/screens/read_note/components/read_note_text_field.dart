import 'package:flutter/material.dart';



class ReadNoteTextField extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  ReadNoteTextField({this.text,this.fontSize,this.fontWeight});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        enabled: false,
        maxLines: null,
        controller: TextEditingController(text: text),
        decoration: InputDecoration(fillColor: Colors.transparent,),
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
