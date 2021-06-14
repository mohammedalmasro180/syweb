import 'package:flutter/material.dart';
import 'package:theone/theme/color.dart';

Widget down(context,TextEditingController controller ,String hint){
  return GestureDetector(
    child: Container(
      height: 35,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: primary,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(

        children: <Widget>[
          Text(
            hint,
            style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
        ],
      ),
    ),
  );
}
