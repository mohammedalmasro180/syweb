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
import 'package:theone/theme/color.dart';

import 'Employee.dart';
class card_card extends StatefulWidget {
  const card_card({Key key}) : super(key: key);

  @override
  _card_cardState createState() => _card_cardState();
}

class _card_cardState extends State<card_card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar(context,Languages.of(context).class_definition),
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
                          Expanded(
                              child: SizedBox(width: 50,)
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Mycheckbox(title: Languages.of(context).extrapublesh,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Mycheckbox(title: Languages.of(context).extraclass,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(child: txt(context, Languages.of(context).classhome)),
                          Expanded(child: txt(context, Languages.of(context).qn)),
                          Expanded(child: txt(context, Languages.of(context).extraunit
                          )),
                          Expanded(child: txt(context, Languages.of(context).price)),
                          Expanded(child: txt(context, 'الاجمالي')),

                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(child:Container(width: 55,height: 22,

                            decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(10),
                                color: sh,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      //blurRadius: 4,
                                      spreadRadius: 3.1
                                  )
                                ]

                            ),


                          )),
                          Expanded(child:Container(width: 55,height: 22,

                            decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(10),
                                color: sh,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      //blurRadius: 4,
                                      spreadRadius: 3.1
                                  )
                                ]

                            ),

                          )),
                          Expanded(child:Container(width: 55,height: 22,

                            decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(10),
                                color: sh,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      //blurRadius: 4,
                                      spreadRadius: 3.1
                                  )
                                ]

                            ),

                          )),
                          Expanded(child:Container(width: 55,height: 22,

                            decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(10),
                                color: sh,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      //blurRadius: 4,
                                      spreadRadius: 3.1
                                  )
                                ]

                            ),

                          )),
                          Expanded(child:Container(width: 55,height: 22,

                            decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(10),
                                color: sh,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      //blurRadius: 4,
                                      spreadRadius: 3.1
                                  )
                                ]

                            ),

                          )),

                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Mycheckbox(title: Languages.of(context).Activatespecial,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: txt(context, Languages.of(context).extradete),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(child: txt(context, Languages.of(context).deteform)),
                          Expanded(child: down(context, controller, "06/01/2021")),
                          Expanded(
                              child: SizedBox(width: 50,)
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(child: txt(context, Languages.of(context).deteto)),
                          Expanded(child: down(context, controller, "06/01/2021")),
                          Expanded(
                              child: SizedBox(width: 50,)
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),


          )
        ],
      ),
    );
  }
}
