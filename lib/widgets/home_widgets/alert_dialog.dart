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
      title: Text('Confirm delete',),
      content: Text('Are you sure you want to delete this note?',),
      actions: <Widget>[
        myFlatButton('Delete', Colors.redAccent, true),
        myFlatButton('Cancel', Colors.grey, false),
      ],
      contentPadding: EdgeInsets.only(top: 15,bottom: 5,left: 25,right: 25),
      insetPadding: EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
