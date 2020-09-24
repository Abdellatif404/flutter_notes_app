import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/services/data.dart';
import 'package:provider/provider.dart';
import '../../../widgets/custom_alert_dialog.dart';
import 'list_tile.dart';



class CustomDismissible extends StatelessWidget {
  const CustomDismissible({Key key, this.data, this.index}) : super(key: key);
  final Data data;
  final int index;

  @override
  Widget build(BuildContext context) {

    return Dismissible(
      key: ValueKey([data.notes['titles']]),
      direction: DismissDirection.endToStart,
      child: Card(child: CustomListTile(index)),
      background: Padding(
        padding: EdgeInsets.only(right: 30),
        child: Align(
          alignment: Alignment.centerRight,
          child: Icon(FontAwesomeIcons.trashAlt,
              color: Color(0xFFFA8182), size: 28),
        ),
      ),
      onDismissed: (direction) => context.read<Data>().removeNote(index),
      confirmDismiss: (direction) => showDialog(
          context: context, builder: (context) => CustomAlertDialog()),
    );
  }
}

