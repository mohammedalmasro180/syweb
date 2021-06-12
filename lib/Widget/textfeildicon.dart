import 'package:flutter/material.dart';
import 'package:theone/theme/color.dart';

Widget textfieldicon(context,TextEditingController controller ,String hint,Icon icon){
  return TextFormField(
    controller: controller,

    decoration: InputDecoration(
      labelText: hint,
      prefixIcon: icon,

      fillColor: Colors.white,





    ),
  );
}
