import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/theme/color.dart';
class Employee extends StatefulWidget {


  @override
  _EmployeeState createState() => _EmployeeState();
}
TextEditingController controller;
class _EmployeeState extends State<Employee> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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


                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("البيانات الشخصية",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "الكود"),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textfield(context, controller, "الكود الرئيسي"),

                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:down(context, controller, "الديانة"),
                            ),
                          ),

                        ],
                      ),
                    ),
                    //rep
                    Expanded(child: Row(
                      children: [
                        Expanded(child: textfield(context, controller, "الاسم"))
                      ],
                    )),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text("القسم",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: down(context, controller, "جديد")),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text("الجنس",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: down(context, controller, "ذكر")),

                      ],
                    ),
                    Expanded(child: Row(
                      children: [
                       Expanded(child: Row(
                         children: [
                         ],
                       ))
                      ],
                    )),
                    //rep

                    Expanded(child: Row(
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: textfield(context, controller, "الوظيفة"),
                        )),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: textfield(context, controller, "الراتب"),
                        ))

                      ],
                    )),
                    Expanded(child: Row(
                      children: [
                        Expanded(child: textfield(context, controller, "الموظف المسؤول"))
                      ],
                    )),

                    Expanded(child: Row(
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: textfield(context, controller, "الرقم المدني"),
                        )),Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("الحالة الاجتماعية",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: down(context, controller, "اعزب")),

                        ),

                      ],
                    )),

                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("العنوان",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                    Expanded(child: Row(
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: down(context, controller, "المحافظة"),
                        )),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: down(context, controller, "الفرع"),
                        )),


                      ],
                    )),
                    Expanded(child: Row(
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: down(context, controller, "المنطقة"),
                        )),


                      ],
                    )),
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("اعدادات موظف",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ),


                    Expanded(child: Row(
                      children: [
                        Expanded(child: textfield(context, controller, "حساب النقدية"))
                      ],
                    )),

                    Expanded(child: Row(
                      children: [
                        Expanded(child: textfield(context, controller, "المخزن"))
                      ],
                    )),


                  ],
                ),
              ),
            ]),
      ),
    );
  }
}