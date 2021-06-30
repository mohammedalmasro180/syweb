import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/checkbox.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/Widget/textfeildicon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/Widget/txt.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/screens/Employee.dart';
import 'package:theone/theme/color.dart';
class class_definition_public extends StatefulWidget {
  const class_definition_public({Key key}) : super(key: key);

  @override
  _class_definition_publicState createState() => _class_definition_publicState();
}

class _class_definition_publicState extends State<class_definition_public> {
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar(context,'تعريف صنف عام'),

      drawer: drawer(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            height: MediaQuery.of(context).size.height-200,
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
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context, Languages.of(context).classhome+Languages.of(context).type)),
                      Expanded(child: down(context, controller, "مخزني")),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfield(context, controller, Languages.of(context).currentbalance),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/11.png',width: 150,height: 150,

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: RaisedButton(
                      color: rowto,
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 100),
                      onPressed:() {
                      },

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(Languages.of(context).review,style: TextStyle(color:Colors.white),),

                        ],
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfield(context, controller, Languages.of(context).upperlimit),
                ),
                Padding(                  padding: const EdgeInsets.all(8.0),
                  child: textfield(context, controller, Languages.of(context).minimum),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: txt(context, Languages.of(context).options),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).product,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).productiondate,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title:Languages.of(context).expirationdate,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).serialnumber,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).forceoninput,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).forceonoutput,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).classstop,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title:Languages.of(context).groupdisable,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).specialcost,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).weightclass,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).classforbranches,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfield(context, controller, Languages.of(context).partnumber),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, Languages.of(context).measurement,Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, Languages.of(context).source,Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller,Languages.of(context).type,Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, Languages.of(context).manufacturer,Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, Languages.of(context).color,Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, Languages.of(context).sginupcontry,Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, Languages.of(context).size,Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, Languages.of(context).chapter,Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, Languages.of(context).resource,Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, 'المورد',Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfield(context, controller, Languages.of(context).description,)),




                    ],
                  ),
                ),

              ],
            ),


          )
        ],
      ),
    );
  }
}



