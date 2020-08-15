import 'package:flutter/material.dart';
import 'package:notes/styles.dart';
import 'package:notes/data.dart';
import 'package:provider/provider.dart';

class AddNoteTextField extends StatelessWidget {
  final int maxLines;
  final String hintText;
  final TextStyle textStyle;
  AddNoteTextField({this.maxLines,this.hintText,this.textStyle});

  @override
  Widget build(BuildContext context) {
    var data = context.watch<Data>();

    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        onChanged: (String input){
          if(input != null){
            if(hintText == 'Title'){
              data.addTitle(input);
            }else{
              data.addBody(input);
            }
          }
        },
        style: textStyle,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black45,fontSize: 20),
          filled: true,
          fillColor: Color(0xffF3F8F8),
          enabledBorder: inputBorder,
          focusedBorder: inputBorder,
        ),
      ),
    );
  }
}
