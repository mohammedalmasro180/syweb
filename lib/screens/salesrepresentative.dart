import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/Radio.dart';
import 'package:theone/Widget/checkbox.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/Widget/textfeildicon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/Widget/txt.dart';
import 'package:theone/localization/language/languages.dart';
class sales_representative extends StatefulWidget {
 // const sales_representative({Key? key}) : super(key: key);

  @override
  _sales_representativeState createState() => _sales_representativeState();
}TextEditingController controller;

class _sales_representativeState extends State<sales_representative> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar(context,'مندوب مبيعات'),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfieldicon(context, controller, Languages.of(context).storehome,Icon(Icons.search)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfieldicon(context, controller, "عميل",Icon(Icons.search)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfieldicon(context, controller,"مركز الكلفة",Icon(Icons.search)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context, "قسم")),
                      Expanded(child: down(context, controller, "الموظفون")),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context, "مندوب")),
                      Expanded(child: down(context, controller, "الكل")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context, "فرع الشركة")),
                      Expanded(child: down(context, controller, "قبدون")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: txt(context, "التاريخ"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context, "من")),
                      Expanded(child: down(context, controller, "06/01/2021")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context, "الى")),
                      Expanded(child: down(context, controller, "06/01/2021")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context, "طريقة الدفع")),
                      Expanded(child: down(context, controller, "")),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context, "العنلة")),
                      Expanded(child: down(context, controller, "ليرة سورية")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: txt(context, "فرز حسب"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyStatefulWidget(R1: 'التاريخ',R2: 'العميل',),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: down(context, controller, "المحافظة"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: down(context, controller, "المحافظة"),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: txt(context, "اظهار"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: 'تجميع العملاء',),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: 'اظهار فواتير المرحلة',),
                ),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: 'اظهار فواتير غير المرحلة',),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: 'اظهار الخصومات والاضافات',),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: 'تجميع حسب المندوب',),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: 'عرض العملاء الغير مباع لها',),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: 'ترتيب العملاء حسب المجموعات',),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: 'تحليل العملاء حسب اكبر صافي',),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: 'اظهار  المدفوع ',),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: 'اظهار  المتبقي ',),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: 'اظهار  هدف العميل ',),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Mycheckbox(title: 'مصادر التقرير ',),

                        ),
                      ),
                      Expanded(

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Mycheckbox(title: 'مبيعات',),

                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Mycheckbox(title: 'مرتجع مبيعات ',),

                        ),
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfieldicon(context, controller,"العمولة",Icon(Icons.search)),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [

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
