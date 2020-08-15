import 'package:flutter/material.dart';
import 'package:notes/screens/read_note.dart';
import 'package:provider/provider.dart';
import '../../data.dart';


class CardListTile extends StatelessWidget {
  final int index;
  CardListTile(this.index);
  @override
  Widget build(BuildContext context) {
    var data = context.watch<Data>();

    return ListTile(
      title: Text(
        data.titles[index],
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w500,
          color: Color(0xff094067),
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          data.notes[index],
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Color(0xff5f6c7b),
          ),
        ),
      ),
      trailing: Text(data.noteTime[index], style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xff959EA7),
      ),),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ReadNoteScreen(index))),
      contentPadding: EdgeInsets.all(17),
    );
  }
}
