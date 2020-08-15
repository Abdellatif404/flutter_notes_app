import 'package:flutter/material.dart';
import '../../styles.dart';


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
        controller: TextEditingController(text: text),
        enabled: false,
        maxLines: null,
        style: TextStyle(
          fontSize: fontSize,
          color: Color(0xff094067),
          fontWeight: fontWeight,
        ),
        cursorColor: primaryColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: backgroundColor,
          enabledBorder: inputBorder,
          focusedBorder: inputBorder,
        ),
      ),
    );
  }
}
