import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/screens/add_note.dart';
import 'package:notes/screens/settings.dart';
import 'package:notes/styles.dart';
import 'package:notes/widgets/home_widgets/cards_list_view.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20,right: 5,top: 8,bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Home', style: titlePageTS,),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.cog, size: 22, color: primaryColor,),
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsScreen())),
                  ),
                ],
              ),
            ),

            CardsListView(),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.plus, color: backgroundColor,),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AddNoteScreen())),
      ),
    );
  }
}



