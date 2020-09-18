import 'package:flutter/material.dart';



class CustomAppBar extends StatelessWidget {
  CustomAppBar({this.title,this.isVisible,this.icon,this.onPressed});
  final String title;
  final bool isVisible;
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back, size: 27),
            onPressed: () => Navigator.pop(context),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
          ),
          Visibility(
            visible: isVisible ?? true,
            child: IconButton(icon: Icon(icon, size: 22), onPressed: onPressed),
          ),
        ],
      ),
    );
  }
}
