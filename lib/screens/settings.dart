import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/widgets/appbar.dart';
import 'package:url_launcher/url_launcher.dart';


class SettingsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    void _launchURL() async {
      var url = 'https://flutter.dev';
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
              child: ListTile(
                title: Text('Source code',style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                ),),
                trailing: IconButton(
                  icon: Icon(FontAwesomeIcons.github,color: Color(0xff3C4143),size: 25,),
                  onPressed: _launchURL,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
