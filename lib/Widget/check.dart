import 'package:flutter/material.dart';
import 'package:theone/theme/color.dart';
bool ValueChanged;

Widget check(context,TextEditingController controller ,String hint){
  return Padding(
      padding: const EdgeInsets.all(3.0),
      child:Row(
        children: [
          Checkbox(value: false,
        onChanged: (bool newValue) {
  setState(() {
  ValueChanged = newValue;
  });
  },
  ),
          Text(hint)
        ],
      )
  );
}

void setState(Null Function() param0) {
}
