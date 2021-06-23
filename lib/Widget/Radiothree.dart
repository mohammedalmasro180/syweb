import 'package:flutter/material.dart';

/// This is the main application widget.
enum SingingCharacter { lafayette, jefferson }

/// This is the stateful widget that the main application instantiates.
class Radiothree extends StatefulWidget {
  const Radiothree({Key key,this.R1,this.R2,this.R3}) : super(key: key);
  final String R1;
  final String R2;
  final String R3;

  @override
  State<Radiothree> createState() => _RadiothreeState();
}

/// This is the private State class that goes with Radiothree.
class _RadiothreeState extends State<Radiothree> {
  SingingCharacter _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title:  Text(widget.R1),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title:  Text(widget.R2),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title:  Text(widget.R3),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
