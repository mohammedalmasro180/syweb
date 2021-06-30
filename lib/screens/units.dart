import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/check.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/Widget/textfeildicon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/localization/language/languages.dart';
class units extends StatefulWidget {


  @override
  _unitsState createState() => _unitsState();
}
TextEditingController controller;
class _unitsState extends State<units> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: myappbar(context,''),
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
                  ),

                ]

            ),
            child: ListView(

              children: [
                Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfieldicon(context, controller, "المجموعة",  Icon(Icons.search)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "رمز الصنف"),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "اسم الصنف"),

                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "الاسم اللاتيني"),
                            ),



                          ],
                        ),
                      )),
                      Expanded(child:Align(
                        alignment: FractionalOffset.bottomRight,
                        child:Align(
                          alignment: FractionalOffset.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child:Text("تاريخ التسجيل",style: TextStyle(fontSize: 15),)
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child:down(
                                            context,controller,"06/02/21",)
                                      ),
                                    ],
                                  ),

                                  Column(
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: check(context, controller, "نشر الصنف بالمتجر الالكتروني")
                                      ),

                                      Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: check(context, controller,"صنف تجميعي")

                                      ),
                                    ],
                                  ),
                                ]        ),





                          ),
                        ),
                      )),


                    ]
                ),

            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                new Container(
                  height: 80.0,
                  child: new ListView(
                    scrollDirection: Axis.horizontal,
                    children: new List.generate(10, (int index) {
                      return new Card(
                        color: Colors.blue[index * 100],
                        child: new Container(
                          width: 50.0,
                          height: 50.0,
                          child: new Text("$index"),
                        ),
                      );
                    }),
                  ),
                ),



              ],
            ),
                Column(
                  children: [
                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text("الوحدة 1"),
                          ),

                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: down(context, controller, "بدون"),
                            ),
                          ),
                        ]
                    ),
                    check(context, controller, "الوحدة الاضافية"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textfield(context, controller, "رمز الباركود"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textfield(context, controller, "الشد1"),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: textfield(context, controller, "عدد النقاط"),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: textfield(context, controller, "الوزن ك"),
                          ),
                        )
                      ],
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
