import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/checkbox.dart';
import 'package:theone/Widget/classtop.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/dwon.dart';
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
      bottomNavigationBar: BottomBar(context),
      appBar: myappbar(context,'كميات الصنف'),
      drawer: drawer(),
      body: Container(
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
              child: classtop(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfield(context, controller, "كمية الصنف"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfield(context, controller, "كمية المجاني"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: txt(context, "تصنيف العميل")),
                  Expanded(child: down(context, controller, "الكل")),
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
                  Expanded(child: txt(context, 'كمية المجالي')),
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
            Mycheckbox(title: 'تفعيل العرض المجاني',),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: txt(context, "التاريخ"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: txt(context, "من")),
                  Expanded(child: down(context, controller, "06/01/2021")),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: txt(context, "الى")),
                  Expanded(child: down(context, controller, "06/01/2021")),
                ],
              ),
            ),


          ]       ),
        ),

    );
  }
}
