import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/check.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/Widget/textfeildicon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/Widget/drawer.dart';

import 'package:theone/Widget/Appbar.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/localization/locale_constant.dart';
import 'package:theone/theme/color.dart';
class unitss extends StatefulWidget {


  @override
  _unitssState createState() => _unitssState();
}
TextEditingController controller;
class _unitssState extends State<unitss> {
  @override
  Widget build(BuildContext context) {

    String codee;
    getLocale(codee);

    return Scaffold(

      appBar: myappbar(context,Languages.of(context).classhome),
      body: new Center(
        child: new ListView(
          children: <Widget>[
            Column(
              children: [
                new Container(
                  padding: EdgeInsets.all(30),
                  height: MediaQuery.of(context).size.height,
                  width: 700,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 4,
                            spreadRadius: 0.1
                        ),

                      ]

                  ),

                  child: Column(
                    children: [

                      Expanded(
                        child: Row(
                            children: [
                              Expanded(child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: ListView(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: textfieldicon(context, controller, "????????????????",  Icon(Icons.search)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: textfield(context, controller, "?????? ??????????"),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: textfield(context, controller, "?????? ??????????"),

                                    ),



                                  ],
                                ),
                              )),
                              Expanded(child:Align(
                                alignment: FractionalOffset.bottomRight,
                                child:Align(
                                  alignment: FractionalOffset.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                        children: [
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: textfield(context, controller, "?????????? ????????????????"),
                                              ),
                                              Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child:Text("?????????? ??????????????",style: TextStyle(fontSize: 15),)
                                              ),
                                              Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child:down(
                                                    context,controller,"06/02/21",)
                                              ),
                                            ],
                                          ),

                                          Column(
                                            children: [
                                              Padding(
                                                  padding: const EdgeInsets.all(1.0),
                                                  child: check(context, controller, "?????? ?????????? ?????????????? ????????????????????")
                                              ),

                                              Padding(
                                                  padding: const EdgeInsets.all(1.0),
                                                  child: check(context, controller,"?????? ????????????")

                                              ),
                                            ],
                                          ),
                                        ]        ),





                                  ),
                                ),
                              )),


                            ]
                        ),
                      ),

                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: new List.generate(4, (int index) {
                            return new Card(
                              //color: Colors.blue[index * 100],
                              child: new Container(
                                width: 200.0,
                                height: 300.0,
                                child: new ListView(
                                  children: [
                                    Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Text("???????????? "+index.toString()),
                                          ),

                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: down(context, controller, "????????"),
                                            ),
                                          ),
                                        ]
                                    ),
                                    check(context, controller, "???????????? ????????????????"),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: textfield(context, controller, "?????? ????????????????"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: textfield(context, controller, "????????1"),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: textfield(context, controller, "?????? ????????????"),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: textfield(context, controller, "?????????? ??"),
                                          ),
                                        )
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),

                      Expanded(

                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: new List.generate(4, (int index) {
                            return new Card(
                              //color: Colors.blue[index * 100],
                              child: new Container(
                                width: 200.0,
                                height: 300.0,
                                child: new ListView(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: textfield(context, controller, "????????????"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: textfield(context, controller, "?????? ????????????"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: textfield(context, controller, "??????????????"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: textfield(context, controller, "??????????????"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: textfield(context, controller, "??????????????"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: textfield(context, controller, "????????????????"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: textfield(context, controller, "?????? ????????"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: textfield(context, controller, "???????? ?????? ????????????"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: textfield(context, controller, "???????? ??????????????"),
                                    ),





                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Row(
                            children: [
                              Expanded(child: textfield(context, controller, "???????? ?????????????? %")),
                              Expanded(child: textfield(context, controller, "???????? ?????????? %")),
                              Expanded(child: textfield(context, controller, "???????? ?????????????? %")),
                           ])

    )            ],

                ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Future<Locale> getLocale(String code) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String languageCode = _prefs.getString(prefSelectedLanguageCode) ?? "en";
    code=languageCode;
    print(languageCode);
  }


}
