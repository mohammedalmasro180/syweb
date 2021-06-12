import 'package:flutter/material.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/localization/locale_constant.dart';
import 'package:theone/model/language_data.dart';
import 'package:theone/screens/Employee.dart';
import 'package:theone/theme/color.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.language,
            color: Colors.white,
          ),
          title: Text(Languages
              .of(context)
              .appName),
        ),
        body: Container(
          margin: EdgeInsets.all(30),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 80,
                ),
                Text(
                  Languages
                      .of(context)
                      .labelWelcome,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  Languages
                      .of(context)
                      .labelInfo,
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                  textAlign: TextAlign.center,

                ),
                SizedBox(
                  height: 70,
                ),
                _createLanguageDropDown(),
                SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: rowto,
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                    onPressed:() {

                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) =>Employee()));

                    },

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(Languages.of(context).Enter,style: TextStyle(color:Colors.white),),
                        Icon(Icons.arrow_forward,color: Colors.white,
                        )
                      ],


                    ),

                  ),
                ),
              ],
            ),
          ),
        ),
      );

  _createLanguageDropDown() {
    return DropdownButton<LanguageData>(
      iconSize: 30,
      hint: Text(Languages
          .of(context)
          .labelSelectLanguage),
      onChanged: (LanguageData language) {
        changeLanguage(context, language.languageCode);
      },
      items: LanguageData.languageList()
          .map<DropdownMenuItem<LanguageData>>(
            (e) =>
            DropdownMenuItem<LanguageData>(
              value: e,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    e.flag,
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(e.name)
                ],
              ),
            ),
      )
          .toList(),
    );
  }
}
