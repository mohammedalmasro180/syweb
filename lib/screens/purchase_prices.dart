import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/classtop.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/txt.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/theme/color.dart';
class purchase_prices extends StatefulWidget {
  const purchase_prices({Key key}) : super(key: key);

  @override
  _purchase_pricesState createState() => _purchase_pricesState();
}

class _purchase_pricesState extends State<purchase_prices> {
  @override

    TextEditingController controller;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        bottomNavigationBar: BottomBar(context),
        appBar: myappbar(context, 'اسعار  مشتركة'),
        drawer: drawer(),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              height: MediaQuery.of(context).size.height-55,
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
                  Expanded(child: classtop()),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: txt(context, "تاريخ الفاتورة")),


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
                                Expanded(child: SizedBox(width: 55,))
                                  ],
                                )),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: txt(context, "رقم الفاتورة")),


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
                            Expanded(child: SizedBox(width: 55,))
                                  ],
                                )),

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: txt(context, "الكمية")),


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
                                Expanded(child: SizedBox(width: 55,))
                                  ],
                                )),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(child: Row(
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
                                     Expanded(child: SizedBox(width: 55,))
                                  ],
                                )),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: txt(context, Languages.of(context).price)),


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
                                    Expanded(child: SizedBox(width: 55,))
                                  ],
                                )),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: txt(context, "العملة")),


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
                                    Expanded(child: SizedBox(width: 55,))
                                  ],
                                )),

                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  )


]      ),
      ),
          ],
        ),


      );
    }
  }
