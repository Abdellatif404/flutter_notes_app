import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/services/data.dart';
import 'package:provider/provider.dart';
import 'alert_dialog.dart';
import 'card_list_tile.dart';



class MyDismissible extends StatelessWidget {
  const MyDismissible({Key key, this.data, this.index}) : super(key: key);
  final Data data;
  final int index;

  @override
  Widget build(BuildContext context) {

    return Dismissible(
      key: ValueKey([data.titles, data.notes]),
      direction: DismissDirection.endToStart,
      child: Card(
        child: CardListTile(index),
        margin: EdgeInsets.all(6),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      background: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Align(
          alignment: Alignment.centerRight,
          child: Icon(FontAwesomeIcons.trashAlt,
              color: Color(0xFFFA8182), size: 28),
        ),
      ),
      onDismissed: (direction) {
        context.read<Data>().removeNote(index);
        context.read<Data>().setData();
      },
      confirmDismiss: (direction) {
        return showDialog(
            context: context, builder: (context) => CustomAlertDialog());
      },
    );
  }
}

