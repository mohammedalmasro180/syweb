import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/checkbox.dart';
import 'package:theone/Widget/classtop.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/Widget/textfeildicon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/Widget/txt.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/theme/color.dart';
class gridclass extends StatefulWidget {
  const gridclass({Key key}) : super(key: key);

  @override
  _gridclassState createState() => _gridclassState();
}

class _gridclassState extends State<gridclass> {
  TextEditingController controller;
  @override

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: myappbar(context,Languages.of(context).classhome+' '+Languages.of(context).qn),
      drawer: drawer(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
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
              ],
            ),
          ),
          //classtop(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).classhome+' '+Languages.of(context).qn),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Free_quantity),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: txt(context, Languages.of(context).customer_rating)),
                Expanded(child: down(context, controller,Languages.of(context).All)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: txt(context, Languages.of(context).classhome)),
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
            child: Row(

              children: [
                Expanded(child: txt(context, Languages.of(context).extraunit)),
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
            child: Row(
              children: [
                Expanded(child: txt(context, Languages.of(context).Free_quantity)),
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
          Mycheckbox(title:Languages.of(context).Activate_the_free_offer,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            //child: txt(context, ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: txt(context, Languages.of(context).deteform)),
                Expanded(child: down(context, controller, "06/01/2021")),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: txt(context, Languages.of(context).deteto)),
                Expanded(child: down(context, controller, "06/01/2021")),
              ],
            ),
          ),


        ]       ),

    );
  }
}
