import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/check.dart';
import 'package:theone/Widget/checkbox.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/Widget/textfeildicon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/Widget/drawer.dart';

import 'package:theone/Widget/Appbar.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/localization/locale_constant.dart';
import 'package:theone/theme/color.dart';
class extra_prices extends StatefulWidget {


  @override
  _extra_pricesState createState() => _extra_pricesState();
}

TextEditingController controller;
class _extra_pricesState extends State<extra_prices> {
  @override

  Widget build(BuildContext context) {
    String codee;
    getLocale(codee);

    return Scaffold(
      bottomNavigationBar: BottomBar(context),
      appBar: myappbar(context,Languages.of(context).extraprice),
      drawer: drawer(),
      body: Container(
        padding: EdgeInsets.all(30),
        height: MediaQuery.of(context).size.height-2,
        width: 700,

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 4,
                  spreadRadius: 0.1
              )

            ]

        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: textfieldicon(context, controller, Languages.of(context).grouphome,  Icon(Icons.search)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: textfield(context, controller,  Languages.of(context).extracode),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: textfield(context, controller,  Languages.of(context).groupnameto),
                  ),
                  Padding(

                    padding: const EdgeInsets.all(1.0),


                    child: textfield(context, controller,  Languages.of(context).classhome),

                  ),

                ],
              ),
            ),

            Align(
              alignment: FractionalOffset.bottomRight,
              child:Align(
                alignment: FractionalOffset.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(

                      children: [
                        Row(
                          children: [


                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child:Text(Languages.of(context).extradete,style: TextStyle(fontSize: 15),)
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child:down(
                                    context,controller,"06/02/21",)
                              ),
                            ),
                            Expanded(child: SizedBox(width: 55,)),

                                                      ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Mycheckbox(title: Languages.of(context).extraprice,)
                            ),

                            Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Mycheckbox(title: Languages.of(context).extraclass,)

                            ),
                          ],
                        ),

                      ]        ),





                ),
              ),
            ),
            Column(

              children: new List.generate(3, (int index) {
                return new Card(
                  //color: Colors.blue[index * 100],
                  child: new Container(
                    width: 700.0,
                    height: 300.0,
                    child: Column(
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                              alignment: FractionalOffset.topCenter,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(Languages.of(context).extraunit+" "+
                                        index.toString()),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: down(context, controller, Languages.of(context).extraun),
                                  ),
                                ],
                              )),
                        )),
                        Expanded(
                          child: new ListView(
                              scrollDirection: Axis.vertical,
                              children: new List.generate(10, (int index) {
                                return
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: textfield(context, controller, Languages.of(context).extraprice+" "+index.toString()),
                                      ),
                                    ],
                                  );


                              }

                              )

                          ),
                        ),
                      ],
                    ),
                  ),

                );
              }),
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
