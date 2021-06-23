import 'package:flutter/material.dart';
import 'package:theone/theme/color.dart';

Widget btn(context,String hint){
  return Container(
    width: 50,
    height: 50,
    child: RaisedButton(
      color: rowto,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 100),
      onPressed:() {
      },

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(hint,style: TextStyle(color:Colors.white),),

        ],
      ),

    ),
  );
}
