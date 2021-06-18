import 'package:flutter/material.dart';
import 'package:theone/theme/color.dart';
bool _checkbox = false;

Widget check(context,TextEditingController controller ,String hint){
  return Padding(
      padding: const EdgeInsets.all(3.0),
      child:Row(
        children: [
          Checkbox(
            value: _checkbox,
            onChanged: (value) {
              setState(() {
                _checkbox = !_checkbox;
              });
            },
          ),
          Text(hint),
        ],
      ),
  );
}

void setState(Null Function() param0) {
}
