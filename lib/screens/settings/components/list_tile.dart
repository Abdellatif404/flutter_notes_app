import 'package:flutter/material.dart';



class SettingsListTile extends StatelessWidget {
  SettingsListTile({this.title,this.trailing});
  final String title;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text(title, style:
       TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      ),
      trailing: trailing,
    );
  }
}
