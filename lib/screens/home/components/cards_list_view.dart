import 'package:flutter/material.dart';
import 'package:notes/services/data.dart';
import 'package:provider/provider.dart';
import 'my_dismissible.dart';



class CardsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = context.watch<Data>();

    return Flexible(
      child: ListView.builder(
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        itemCount: data.notes.length,
        itemBuilder: (context,index) => MyDismissible(data: data,index: index),
      ),
    );
  }
}


