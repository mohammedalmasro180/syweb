import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/Radio.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/checkbox.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/Widget/textfeildicon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/localization/language/languages.dart';
class costcenter extends StatefulWidget {
  const costcenter({Key key}) : super(key: key);

  @override
  _costcenterState createState() => _costcenterState();
}
TextEditingController controller;
class _costcenterState extends State<costcenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar(context,Languages.of(context).add+" "+Languages.of(context).classhome),
      drawer: drawer(),
      bottomNavigationBar:BottomBar(context),
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
                  child: textfield(context, controller, Languages.of(context).groupcode),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:Mycheckbox(title: Languages.of(context).storestoped,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfield(context, controller, Languages.of(context).addres),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfield(context, controller, "المركز الرئيسي"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfield(context, controller, "تقديري الايراد")),
                      Expanded(child: textfield(context, controller, "%")),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfield(context, controller, "نوعه")),
                      Expanded(child: down(context, controller, "قسم")),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfield(context, controller, Languages.of(context).groupnameto),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfieldicon(context, controller, Languages.of(context).Employeeacount,Icon( Icons.search)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfieldicon(context, controller, "فرع الشركة",Icon( Icons.search)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfield(context, controller, Languages.of(context).grouphome),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfield(context, controller, "تقديري مصروف")),
                      Expanded(child: textfield(context, controller, "%")),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("تفاصيل المشروع",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: Text("قيمة المشروع",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),),
                      Expanded(
                        child: textfield(context, controller, "0.000"),


                      ),
                      Expanded(
                        child: textfield(context, controller, "0.000"),


                      ),



                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: Text("الاضافات",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),),
                      Expanded(
                        child: textfield(context, controller, "0.000"),


                      ),
                      Expanded(
                        child: textfield(context, controller, "0.000"),


                      ),



                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: Text("الاضافات",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),),
                      Expanded(
                        child: textfield(context, controller, "0.000"),


                      ),
                      Expanded(
                        child: textfield(context, controller, "0.000"),


                      ),



                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: Text("الاضافات",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),),
                      Expanded(
                        child: textfield(context, controller, "0.000"),


                      ),
                      Expanded(
                        child: textfield(context, controller, "0.000"),


                      ),



                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: Text("الخصومات",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),),
                      Expanded(
                        child: textfield(context, controller, "0.000"),


                      ),
                      Expanded(
                        child: textfield(context, controller, "0.000"),


                      ),



                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: Text("الاجمالي",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),),
                      Expanded(
                        child: textfield(context, controller, "0.000"),


                      ),



                    ],
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: textfield(context, controller, "")),



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
