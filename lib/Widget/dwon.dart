import 'package:flutter/material.dart';
import 'package:theone/theme/color.dart';

Widget down(context,TextEditingController controller ,String hint){
  return Container(
    width: 50,
    height: 50,
    child: DropdownButton(
      value: hint,
      dropdownColor: Colors.deepOrange,


      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      items: <String>[hint]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Container(

              width: 50,
              height: 140,

             child: Align(
            alignment: FractionalOffset.center,

            child: Text(value),
              )),
        );
      }).toList(), onChanged: (String value) {  },
    ),
  );
}
