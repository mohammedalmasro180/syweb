import 'package:flutter/material.dart';
import 'package:theone/theme/color.dart';

Widget textfield(context,TextEditingController controller ,String hint){
  return TextFormField(


    controller: controller,
    decoration: InputDecoration(labelText: hint,filled: true,fillColor: Colors.white,border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20)
    )),
  );
}
