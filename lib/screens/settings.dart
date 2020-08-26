import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/widgets/appbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';

import '../data.dart';


class SettingsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    var data = context.watch<Data>();

    void _launchURL() async {
      var url = 'https://github.com/Abdellatif404/flutter_notes_app';
      try{
        if (await canLaunch(url)) {
          await launch(url);
        }
      }catch(e){
        throw '$url cannot launch';
      }

    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 45),
              child: CustomAppBar(title: 'Settings',visibility: false,),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Night mode',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),),
                    trailing: Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                        value: data.isNight,
                        onChanged: (value){
                          data.enableDarkMode();
                          data.setTheme();
                        },
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Source code',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),),
                    trailing: IconButton(
                      icon: Icon(FontAwesomeIcons.github,
                        color: Theme.of(context).primaryIconTheme.color,
                        size: 25,),
                      onPressed: _launchURL,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
