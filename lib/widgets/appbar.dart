import 'package:flutter/material.dart';
import 'package:notes/styles.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool visibility;
  final IconData icon;
  final Function onPressed;
  CustomAppBar({this.title,this.visibility,this.icon,this.onPressed});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back, size: 27, color: primaryColor,),
            onPressed: () => Navigator.pop(context),
          ),
          Text(title, style: titlePageTS,),
          Visibility(
            visible: visibility ?? true,
            child: IconButton(
                icon: Icon(icon,color: primaryColor,size: 22,),
                onPressed: onPressed,
            ),
          ),
        ],
      ),
    );
  }
}
