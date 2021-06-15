import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/CustomDropdown.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/check.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/Widget/textfeildicon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/theme/color.dart';
class class_definition extends StatefulWidget {
  const class_definition({Key key}) : super(key: key);

  @override
  _class_definitionState createState() => _class_definitionState();
}
TextEditingController controller;
class _class_definitionState extends State<class_definition> {
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(

        bottomNavigationBar: BottomBar(context),
        appBar: myappbar(context,Languages.of(context).add+" "+Languages.of(context).classhome),
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


              child: ListView(
                children: [
                  Row(
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(20.0),
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
                  Row(
                    children: [
                      Expanded(child:
                      Padding(
                       padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف1"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف3"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف5"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف7"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف9"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف11"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف13"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف15"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف17"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف19"),
                            ),

                          ],
                        ),
                      )),
                      Expanded(child:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف2"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف4"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف6"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف8"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف10"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف12"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف14"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف16"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف18"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "وصف20"),
                            ),

                          ],
                        ),
                      )),

                    ],
                  )
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}

