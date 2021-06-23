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
import 'package:theone/screens/Employee.dart';
import 'package:theone/theme/color.dart';
class class_definition_public extends StatefulWidget {
  const class_definition_public({Key key}) : super(key: key);

  @override
  _class_definition_publicState createState() => _class_definition_publicState();
}

class _class_definition_publicState extends State<class_definition_public> {
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar(context,'تعريف صنف عام'),
      bottomNavigationBar: BottomBar(context),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context, "نوع الصنف")),
                      Expanded(child: down(context, controller, "مخزني")),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfield(context, controller, "الكمية الحالية"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/11.png',width: 150,height: 150,

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: RaisedButton(
                      color: rowto,
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 100),
                      onPressed:() {
                      },

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("استعراض",style: TextStyle(color:Colors.white),),

                        ],
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfield(context, controller, "الحد الاعلى"),
                ),
                Padding(                  padding: const EdgeInsets.all(8.0),
                  child: textfield(context, controller, "الحد الادنى"),
                ),

Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: txt(context, "خيارات"),
                ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Mycheckbox(title: 'منتج',),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Mycheckbox(title: 'تاريخ انتاج',),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Mycheckbox(title: 'تاريخ صلاحية',),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Mycheckbox(title: 'رقم تسلسلي',),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Mycheckbox(title: 'فرض عند الادخال',),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Mycheckbox(title: 'فرض عند الاخراج',),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Mycheckbox(title: 'توقيف الصنف',),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Mycheckbox(title:Languages.of(context).groupdisable,),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Mycheckbox(title: 'تكلفة خاصة',),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Mycheckbox(title: 'صنف وزني',),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Mycheckbox(title: 'صنف للافرع',),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: textfield(context, controller, 'رقم القطعة'),
    ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, 'القياس',Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, 'المصدر',Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, 'النوع',Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, 'الشركة المصنعة',Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, 'اللون',Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, 'الدولة',Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, 'الحجم',Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, 'الوصف',Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, 'الفصل',Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfieldicon(context, controller, 'المورد',Icon(Icons.search))),




                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfield(context, controller, 'المواصفات',)),




                    ],
                  ),
                ),

              ],
            ),


          )
        ],
      ),
    );
  }
}


