import 'package:flutter/material.dart';
import 'package:theone/theme/color.dart';

Widget myappbar(context,String title){
  return  AppBar(title: Text(title,style: TextStyle(color: Colors.white),),
    centerTitle: true,
    backgroundColor: sh,
    actions: [
      IconButton(
        icon: new Icon(Icons.arrow_back,color: Colors.white,),
        onPressed: () => Navigator.of(context).pop(),
      ),
  ],
    leading:IconButton(
      icon: new Icon(Icons.list,color: Colors.white,),
      onPressed: () => Navigator.of(context).pop(),
    ),
  );
}
