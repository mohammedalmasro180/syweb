import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/textfelid.dart';
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
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          drawer: drawer(),

          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: sh,
            showUnselectedLabels: true,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.open_in_new,color: Colors.white,),
                  title: Text('جديد'),
                  backgroundColor: sh
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add,color: Colors.white,),
                  title: Text('اضافة'),
                  backgroundColor: sh
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.edit,color: Colors.white,),
                  title: Text('تعديل'),
                  backgroundColor: sh
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person,color: Colors.white,),
                  title: Text('مجموعات'),backgroundColor: sh
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings,color: Colors.white,),
                  title: Text('حسابات'),
                  backgroundColor: Colors.red
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings,color: Colors.white,),
                  title: Text('اغلاق'),
                  backgroundColor: Colors.red
              ),
            ],


          ),

          appBar: myappbar(context),
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
                                                    Checkbox(value: false, onChanged: null,

                                                    ),
                                                    Text("ايقاف  المجموعة")
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Checkbox(value: false, onChanged: null,

                                                    ),
                                                    Text("غير مرئية في نقاط البيع")
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
