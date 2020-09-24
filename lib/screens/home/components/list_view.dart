import 'package:flutter/material.dart';
import 'package:notes/services/data.dart';
import 'package:provider/provider.dart';
import 'dismissible.dart';



class CustomListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = context.watch<Data>();


    return Flexible(
      child: ListView.builder(
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        itemCount: data.notes['titles'].length,
        itemBuilder: (context,index) => CustomDismissible(data: data,index: index),
      ),
    );
  }
}


