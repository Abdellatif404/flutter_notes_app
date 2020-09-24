import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/services/data.dart';
import 'package:notes/services/shared_pref.dart';
import 'package:notes/widgets/custom_appbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';
import 'components/list_tile.dart';



class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var data = context.watch<SharedPref>();

    void _launchURL() async {
      String url = 'https://github.com/Abdellatif404/flutter_notes_app';
        if (await canLaunch(url))
          await launch(url);
        else return ;
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 45),
              child: CustomAppBar(title: 'Settings',isVisible: false,),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  SettingsListTile(
                    title: 'Night mode',
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
                  SettingsListTile(
                    title: 'Source code',
                    trailing: IconButton(
                      icon: Icon(FontAwesomeIcons.github,
                          color: Theme.of(context).primaryIconTheme.color,
                          size: 25),
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
