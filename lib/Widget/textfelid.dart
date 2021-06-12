import 'package:flutter/material.dart';
import 'package:theone/theme/color.dart';

Widget textfield(context,TextEditingController controller ,String hint){
  return TextFormField(
    controller: controller,

    decoration: InputDecoration(
      labelText: hint,


      fillColor: Colors.white,





    ),
  );
}
