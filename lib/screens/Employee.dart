import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/localization/locale_constant.dart';
import 'package:theone/theme/color.dart';
class Employee extends StatefulWidget {


  @override
  _EmployeeState createState() => _EmployeeState();
}
TextEditingController controller;

class _EmployeeState extends State<Employee> {
  @override
  Widget build(BuildContext context) {

    String codee;
    getLocale(codee);

    String address= Languages.of(context).Employee;
    return Directionality(

      textDirection: codee=='ar'? TextDirection.rtl:TextDirection.ltr,

      child: Scaffold(
        bottomNavigationBar: BottomBar(context),
        appBar: myappbar(context,'Employee'),
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


                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(address.toString() ,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller,Languages.of(context).Employeetxtcode),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, Languages.of(context).Employeetxtmaincode),

                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
       //                       child:down(context, controller, "الديانة"),
                            ),
                          ),

                        ],
                      ),
                    ),
                    //rep
                    Expanded(child: Row(
                      children: [
                        Expanded(child: textfield(context, controller, Languages.of(context).Employeetxtname))
                      ],
                    )),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text(Languages.of(context).Employeelbldepatment,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: down(context, controller, Languages.of(context).EmployeedounNew)),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text(Languages.of(context).Employeelblgender,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: down(context, controller, Languages.of(context).Employeedwongender)),

                      ],
                    ),
                    Expanded(child: Row(
                      children: [
                       Expanded(child: Row(
                         children: [
                         ],
                       ))
                      ],
                    )),
                    //rep

                    Expanded(child: Row(
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: textfield(context, controller, Languages.of(context).Employeetxtwork),
                        )),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: textfield(context, controller, Languages.of(context).Employeesolary),
                        ))

                      ],
                    )),
                    Expanded(child: Row(
                      children: [
                        Expanded(child: textfield(context, controller, Languages.of(context).Employeecharge))
                      ],
                    )),

                    Expanded(child: Row(
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: textfield(context, controller, Languages.of(context).Employeenumber),
                        )),Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(Languages.of(context).social,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: down(context, controller, Languages.of(context).Employeeaingle)),

                        ),

                      ],
                    )),

                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(Languages.of(context).Employee,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                    Expanded(child: Row(
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: down(context, controller, Languages.of(context).EmployeeGovernorate),
                        )),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: down(context, controller, Languages.of(context).EmployeeRegion),
                        )),


                      ],
                    )),
                    Expanded(child: Row(
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: down(context, controller, Languages.of(context).EmployeeBranch),
                        )),


                      ],
                    )),
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(Languages.of(context).Employeelblsetting,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ),


                    Expanded(child: Row(
                      children: [
                        Expanded(child: textfield(context, controller, Languages.of(context).Employeeacount))
                      ],
                    )),

                    Expanded(child: Row(
                      children: [
                        Expanded(child: textfield(context, controller, Languages.of(context).Employestore))
                      ],
                    )),


                  ],
                ),
              ),
            ]),
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