import 'package:flutter/material.dart';
import 'package:theone/theme/color.dart';

Widget check(context,TextEditingController controller ,String hint){
  return Padding(
      padding: const EdgeInsets.all(3.0),
      child:Row(
        children: [
          Checkbox(value: false, onChanged: null,

          ),
          Text(hint)
        ],
      )
  );
}
