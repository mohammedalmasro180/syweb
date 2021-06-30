import 'package:flutter/material.dart';
import 'package:theone/Widget/Radio.dart';
import 'package:theone/localization/locale_constant.dart';
class changelanguage extends StatefulWidget {
  const changelanguage({Key key}) : super(key: key);

  @override
  _changelanguageState createState() => _changelanguageState();
}

class _changelanguageState extends State<changelanguage> {
  SingingCharacter _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: FractionalOffset.center,
      child: Column(
        children: <Widget>[
          ListTile(
            title:  Text('English'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                  changeLanguage(context, 'en');
                });
              },
            ),
          ),
          ListTile(
            title:  Text('العربية'),

            leading: Radio<SingingCharacter>(
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                  changeLanguage(context, 'ar');
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
