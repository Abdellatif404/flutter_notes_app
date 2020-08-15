import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/styles.dart';
import 'package:notes/data.dart';
import 'package:notes/widgets/home_widgets/alert_dialog.dart';
import 'package:provider/provider.dart';
import 'card_list_tile.dart';


class CardsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = context.watch<Data>();

    return Flexible(
      child: ListView.builder(
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        itemCount: data.notes.length,
        itemBuilder: (context,index){
          return Dismissible(
            key: ValueKey([data.titles,data.notes]),
            child: Card(
              child: CardListTile(index),
              color: cardColor,
              margin: EdgeInsets.all(6),
              elevation: 10,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              shadowColor: Color(0xff73c7fc).withOpacity(0.3),
            ),
            direction: DismissDirection.endToStart,
            onDismissed: (direction){
                context.read<Data>().removeNote(index);
                context.read<Data>().setData();
            },
            confirmDismiss: (direction){
              return showDialog(context: context,builder: (context){
                return CustomAlertDialog();
              });
            },
            background: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  FontAwesomeIcons.trashAlt,
                  color: Color(0xffFF8181),
                  size: 28,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}


