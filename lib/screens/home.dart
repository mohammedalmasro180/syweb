import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/localization/locale_constant.dart';
import 'package:theone/model/language_data.dart';
import 'package:theone/screens/Employee.dart';
import 'package:theone/screens/HomeScreen.dart';
import 'package:theone/screens/Login.dart';
import 'package:theone/screens/addgroup.dart';
import 'package:theone/screens/changelanguage.dart';
import 'package:theone/theme/color.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar:myappbar(context,"The one"),
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
                SizedBox(
                  height: 70,
                ),
                Align(
                  alignment: FractionalOffset.center,
                    child: changelanguage()),
                SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(top:150),
                  child: Container(
                    height: 45,
                    width: 180,

                    child: RaisedButton(
                      color: rowto,
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                      onPressed:() {

                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>HomeScreen()));

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
                ),
              ],
            ),
          ),
        ),
      );

  _createLanguageDropDown() {
    return GestureDetector(
      child: Container(
        height: 45,
        width: 180,


        decoration: BoxDecoration(

          color: primary,
        ),
        //padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),

        child: DropdownButton<LanguageData>(
          iconSize: 30,
          hint: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(Languages
                .of(context)
                .labelSelectLanguage,style: TextStyle(color: Colors.white),),
          ),
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("  "+e.name ),
                      )
                    ],
                  ),
                ),
          )
              .toList(),
        ),
      ),

    );
  }
}
