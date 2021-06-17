import 'package:flutter/material.dart';
import 'package:theone/theme/color.dart';

Widget myappbar(context,String title){
  return  AppBar(title: Text(title,),
    centerTitle: true,
    backgroundColor: primary,
    actions: [
      IconButton(icon: Icon(Icons.search,color: Colors.white,),
          color: Colors.white, onPressed: (){

          })],
    elevation:10,
    titleSpacing: 25,

    leading: new IconButton(
      icon: new Icon(Icons.arrow_back,color: Colors.white,),
      onPressed: () => Navigator.of(context).pop(),
    ),

  );
}
