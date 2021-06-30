import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/CustomDropdown.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/check.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/Widget/textfeildicon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/localization/locale_constant.dart';
import 'package:theone/theme/color.dart';
class class_definition extends StatefulWidget {
  const class_definition({Key key}) : super(key: key);

  @override
  _class_definitionState createState() => _class_definitionState();
}
TextEditingController controller;
class _class_definitionState extends State<class_definition> {
  @override
  Widget build(BuildContext context) {


    String codee;
    getLocale(codee);

    return  Scaffold(


      appBar: myappbar(context,Languages.of(context).add+" "+Languages.of(context).classhome),
      drawer: drawer(),
      body: ListView(
        children: [
          Container(
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
                  )
                ]

            ),


            child: ListView(
              children: [
                Column(
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child:Text(Languages.of(context).extradete,style: TextStyle(fontSize: 15,color: Colors.grey.shade700),)
                            ),
                          ),

                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child:down(
                                  context,controller,"06/02/21",)
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: textfield(context, controller, Languages.of(context).des),
                    ),

                  ],
                ),
                Expanded(child:
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: textfield(context, controller, Languages.of(context).des),
                      ),

                    ],
                  ),
                ))
              ],
            ),

          )
        ],
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