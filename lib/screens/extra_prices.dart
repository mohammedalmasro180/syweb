import 'package:flutter/material.dart';

import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/check.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/Widget/textfeildicon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/Widget/drawer.dart';

import 'package:theone/Widget/Appbar.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/theme/color.dart';
class extra_prices extends StatefulWidget {


  @override
  _extra_pricesState createState() => _extra_pricesState();
}

TextEditingController controller;
class _extra_pricesState extends State<extra_prices> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(context),
      appBar: myappbar(context,'Extra Prices'),
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
            child: Column(
              children: [
                Expanded(
                  child: Column(
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ListView(
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
                                            padding: const EdgeInsets.all(1.0),
                                            child:Text(Languages.of(context).extradete,style: TextStyle(fontSize: 15),)
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child:down(
                                              context,controller,"06/02/21",)
                                        ),
                                      ],
                                    ),

                                    Column(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: check(context, controller, Languages.of(context).extraprice)
                                        ),

                                        Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: check(context, controller,Languages.of(context).extraclass)

                                        ),
                                      ],
                                    ),
                                  ]        ),





                            ),
                          ),
                        )),


                      ]
                  ),
                ),
                Expanded(child:
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: new List.generate(3, (int index) {
                    return new Card(
                      //color: Colors.blue[index * 100],
                      child: new Container(
                        width: 200.0,
                        height: 300.0,
                        child: Column(
                          children: [
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                  alignment: FractionalOffset.topCenter,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(Languages.of(context).extraunit+" "+
                                            index.toString()),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: down(context, controller, Languages.of(context).extraun),
                                      ),
                                    ],
                                  )),
                            )),
                            Expanded(
                              child: new ListView(
                                scrollDirection: Axis.vertical,
                                children: new List.generate(10, (int index) {
                                  return
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: textfield(context, controller, Languages.of(context).extraprice+" "+index.toString()),
                                        ),
                                      ],
                                    );


                              }

                              )

                    ),
                            ),
                          ],
                        ),
                      ),

                    );
                  }),
                ),
                )

              ],
            ),

          )
        ],
      ),
    );
  }
}
