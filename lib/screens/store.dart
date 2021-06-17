import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/localization/locale_constant.dart';
import 'package:theone/screens/addgroup.dart';
import 'package:theone/theme/color.dart';
class store extends StatefulWidget {


  @override
  _storeState createState() => _storeState();
}

class _storeState extends State<store> {
  @override
  Widget build(BuildContext context) {

    String codee;
    getLocale(codee);

    return Scaffold(
        drawer: drawer(),


        bottomNavigationBar: BottomBar(context),

        appBar: myappbar(context,Languages.of(context).storehome),
        body: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Container(

                        padding: EdgeInsets.all(30),
                        height: MediaQuery.of(context).size.height-200,
                        width: 700,

                        child:Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Center(
                            child: Form(
                              //      key: formstate,
                                child: Center(
                                  child: ListView(

                                    children: [
                                      Column(
                                        children: [
                                          textfield(context,code, Languages.of(context).groupcode),




                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [

                                            Checkbox(value: false, onChanged: null,),
                                            Text(Languages.of(context).storestoped,style:  TextStyle(fontSize: 15),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child:textfield(context,code, Languages.of(context).groupname)
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child:textfield(context,code,Languages.of(context).groupnameto)
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child:textfield(context,code, Languages.of(context).storeshortname)
                                      ),

                                      SizedBox(height: 10,),

                                      Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child:textfield(context,code,Languages.of(context).storeplace)
                                      ),
                                      SizedBox(height: 10,),

                                      Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child:textfield(context,code, Languages.of(context).storetel)
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child:textfield(context,code, Languages.of(context).storefax)
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child:textfield(context,code, Languages.of(context).storeact1)
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child:textfield(context,code, Languages.of(context).storeact2)
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child:textfield(context,code, Languages.of(context).storeactcompoy)
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
