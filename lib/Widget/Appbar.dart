import 'package:flutter/material.dart';
import 'package:theone/theme/color.dart';

Widget myappbar(context){
  return  AppBar(title: Text('The one',),
    centerTitle: true,
    backgroundColor: primary,
    actions: [
      IconButton(icon: Icon(Icons.search,color: Colors.white,),
          color: Colors.white, onPressed: (){

          })],
    elevation:10,
    titleSpacing: 25,
    leading: IconButton(icon: Icon(Icons.list,color: Colors.white,),),
  );
}
