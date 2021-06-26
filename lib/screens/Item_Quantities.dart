import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/classtop.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/txt.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/theme/color.dart';
class Item_Quantities extends StatefulWidget {
  const Item_Quantities({Key key}) : super(key: key);

  @override
  _Item_QuantitiesState createState() => _Item_QuantitiesState();
}

class _Item_QuantitiesState extends State<Item_Quantities> {
  @override  TextEditingController controller;

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(context),
      appBar: myappbar(context,'كميات'),
      drawer: drawer(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: classtop(),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: txt(context, 'كميات')),
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
                Expanded(child: txt(context,'الحد الادنى')),
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
                Expanded(child: txt(context, 'الحد الاعلى')),
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
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: txt(context, 'المخزن الرئيسي')),
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
          )
        ],
      ),
    );
  }
}
