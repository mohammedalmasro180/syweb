import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/btn.dart';
import 'package:theone/Widget/checkbox.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/textfeildicon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/Widget/txt.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/localization/language/languages.dart';
class Account extends StatefulWidget {
  const Account({Key key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {

  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(context),
      appBar: myappbar(context,''),
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
                child: txt(context, 'رمز الحساب'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, '003'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, '1203'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'اسم الحساب'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, Languages.of(context).groupnameto),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: down(context,controller,'فرع الششركة'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: txt(context, 'نوع الحساب'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: down(context, controller, "عادي"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Mycheckbox(title: 'توقيف الحساب',),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Mycheckbox(title: 'عدم السماح بالبيع عند تجاوز الحد',),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: txt(context, "الجنسية"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'الرقم المدني'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'المسؤول'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'هاتف1'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'هاتف2'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'فاكس'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'الموبايل'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'المرسلة الى'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'مكان الارسال'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'بريد إلكتروني'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'موقع انترنت'),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: txt(context, ' العنوان'),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: txt(context, 'المحافظة'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: down(context, controller, 'غير محدد'),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: txt(context, 'المنطقة'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: down(context, controller, 'غير محدد'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'القطعة'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'المنزل'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'الرمز البريدي'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'الشارع'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'الجادة'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'رقم الدور'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'صندوق البريد'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Mycheckbox(title: 'عميل نقدي',)
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: txt(context, 'سعر البيع'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'نسبة الخصم%'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'نسبة التوزيع%'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: btn(context, 'الفروع - المواقع'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: btn(context, 'شروط الدفع'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'مركز الكلفة'),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'هدف العميل'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: txt(context, 'تصنيف العميل'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: down(context, controller, 'بدون'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: txt(context, 'الهدف'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'القيمة'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'عدد الفواتير'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'قيمة التعاقد'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'قيمة المشتريات'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'قيمة التصميم'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: txt(context, "تاريخ التسليم"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: down(context, controller, 'Sunday - June'),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: txt(context, "تاريخ انتهاء العقد"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: down(context, controller, 'Sunday - June'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfieldicon(context, controller, 'ح نسبة التوزيع', Icon(Icons.search)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfieldicon(context, controller, 'المندوب', Icon(Icons.search)),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield(context, controller, 'ملاحظات'),
              ),































































































            ],
          ),


          ),

        ],
      ),
    );
  }
}
