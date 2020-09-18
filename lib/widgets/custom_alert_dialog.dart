import 'package:flutter/material.dart';


class CustomAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget myFlatButton(title, color, value){
      return FlatButton(
        child: Text(title,style: TextStyle(color: color),),
        onPressed: () => Navigator.of(context).pop(value),
      );
    }

    return AlertDialog(
      title: Text('Confirm delete'),
      content: Text('Are you sure you want to delete this note?'),
      actions: <Widget>[
        myFlatButton('Delete', Colors.redAccent, true),
        myFlatButton('Cancel', Colors.grey, false),
      ],
      contentPadding: EdgeInsets.fromLTRB(25, 15, 25, 5),
      insetPadding: EdgeInsets.symmetric(horizontal: 20),
    );
  }
}
