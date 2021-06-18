import 'package:flutter/material.dart';

class Mycheckbox extends StatefulWidget {
  Mycheckbox({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MycheckboxState createState() => _MycheckboxState();
}
class _MycheckboxState extends State<Mycheckbox> {
  bool _checkbox = false;
  bool _checkboxListTile = false;
  @override
  Widget build(BuildContext context) {
    return       Row(
      children: [
        Checkbox(
          value: _checkbox,
          onChanged: (value) {
            setState(() {
              _checkbox = !_checkbox;
            });
          },
        ),
        Text(widget.title),
      ],
    );
  }
}