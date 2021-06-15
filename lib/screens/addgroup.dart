import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/check.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/theme/color.dart';
class addgroup extends StatefulWidget {



  @override
  _addgroupState createState() => _addgroupState();
}
TextEditingController code;
TextEditingController name;
TextEditingController nameto;
TextEditingController maingroup;
TextEditingController text;

class _addgroupState extends State<addgroup> {

  @override

  Widget build(BuildContext context) {
    String add=Languages.of(context).add;
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          drawer: drawer(),

          bottomNavigationBar: BottomBar(context),
          appBar: myappbar(context,add+" "+Languages.of(context).grouphome),
          body: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Center(
                        child: Container(
          child:Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Center(
                              child: Form(
                                //      key: formstate,
                                  child: Center(
                                    child: Column(

                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: textfield(context,code, "الرمز")
                                        ),
                                        SizedBox(height: 20,),
                                        Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:textfield(context,code, "الاسم")
                                        ),
                                        SizedBox(height: 20,),
                                        Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:textfield(context,code, "الاسم اللاتيني")
                                        ),
                                        SizedBox(height: 20,),
                                        Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:textfield(context,code, "المجموعة الرئيسية")
                                        ),
                                        SizedBox(height: 20,),
                                        Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:textfield(context,code, "ملاحظات")
                                        ),

                                        Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:Column(
                                              children: [
                                                Row(
                                                  children: [

                                                    check(context,code,    "ايقاف  المجموعة"),


                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    check(context,code,    "غير مرئية في نقاط البيع"),
                                                  ],
                                                ),

                                              ],
                                            )
                                        ),


                                      ],
                                    ),
                                  )),
                            ),
                          ),
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

                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
