import 'package:flutter/material.dart';
import 'package:notes/services/data.dart';
import 'package:provider/provider.dart';



class AddingTextField extends StatelessWidget {
  final int maxLines;
  final String hintText;
  AddingTextField({this.maxLines,this.hintText});

  @override
  Widget build(BuildContext context) {
    var data = context.watch<Data>();

    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(hintText: hintText),
        onChanged: (input) {
          if(input != null) {
            if(hintText == 'Title')
              data.addTitle(input);
            else
              data.addContent(input);
          }
        },
      ),
    );
  }
}
