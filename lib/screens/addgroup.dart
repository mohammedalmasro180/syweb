import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/check.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/localization/locale_constant.dart';
import 'package:theone/model/language_data.dart';
import 'package:theone/screens/Employee.dart';
import 'package:theone/screens/addgroup.dart';
import 'package:theone/screens/class_definition.dart';
import 'package:theone/screens/extra_prices.dart';
import 'package:theone/screens/store.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theone/theme/color.dart';

import 'package:theone/theme/color.dart';
class addgroup extends StatefulWidget {



  @override
  _addgroupState createState() => _addgroupState();
}
TextEditingController code;
TextEditingController name;
TextEditingController nameto;
TextEditingController maingroup;
TextEditingController text;

class _addgroupState extends State<addgroup> {

  @override

  Widget build(BuildContext context) {
    String codee;
    getLocale(codee);

    return  Scaffold(
        drawer: drawer(),

        bottomNavigationBar: BottomBar(context),
        appBar: myappbar(context,'Add Group'),
        body: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Container(
        child:Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Center(
                            child: Form(
                              //      key: formstate,
                                child: Center(
                                  child: Column(

                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: textfield(context,code, Languages.of(context).groupcode)
                                      ),
                                      SizedBox(height: 20,),
                                      Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child:textfield(context,code, Languages.of(context).groupname)
                                      ),
                                      SizedBox(height: 20,),
                                      Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child:textfield(context,code, Languages.of(context).groupnameto)
                                      ),
                                      SizedBox(height: 20,),
                                      Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child:textfield(context,code, Languages.of(context).groupmaingroup)
                                      ),
                                      SizedBox(height: 20,),
                                      Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child:textfield(context,code, Languages.of(context).groupnots)
                                      ),

                                      Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child:Column(
                                            children: [
                                              Row(
                                                children: [

                                                  check(context,code,    Languages.of(context).groupstopgroup),


                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  check(context,code,    Languages.of(context).groupdisable),
                                                ],
                                              ),

                                            ],
                                          )
                                      ),


                                    ],
                                  ),
                                )),
                          ),
                        ),
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

                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        )
    );
  }

  Future<Locale> getLocale(String code) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String languageCode = _prefs.getString(prefSelectedLanguageCode) ?? "en";
    code=languageCode;
    print(languageCode);
  }

}
