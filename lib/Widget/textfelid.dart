import 'package:flutter/material.dart';
import 'package:theone/theme/color.dart';

Widget textfield(context,TextEditingController controller ,String hint){
  return TextFormField(
    controller: controller,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: hint,


      fillColor: Colors.white,





    ),
  );
}
