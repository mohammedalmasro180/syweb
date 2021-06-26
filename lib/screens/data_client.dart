import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/Radiothree.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/btn.dart';
import 'package:theone/Widget/checkbox.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/textfeildicon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/Widget/txt.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/localization/language/languages.dart';
class data_client extends StatefulWidget {
  const data_client({Key key}) : super(key: key);

  @override
  _data_clientState createState() => _data_clientState();
}

class _data_clientState extends State<data_client> {
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(context),
      appBar: myappbar(context,'معلومات العميل'),
      drawer: drawer(),
      body: ListView(
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
            child: txt(context, 'حد/ الرئيسي'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: down(context, controller, '1203-ذمم العملاء'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context, 'حد/ الختامي'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: down(context, controller, '3-الميزانية العمومية'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, 'تاريخ المطابقة'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context, 'ضبط الحساب'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: 'عميل',),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: 'صندوق',),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: 'مصروف',),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: 'مورد',),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: 'اعتماد مستثنى',),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: 'بند',),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: 'ايراد',),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   txt(context, "تحذير"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   Radiothree(R1: 'مدين',R2:'دائن' ,R3: 'بدون',),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   textfield(context, controller, 'القيمة التقديرية'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   txt(context, 'العملة'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   down(context, controller, 'ليرة سورية'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   txt(context, 'الصرف'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   down(context, controller, '1'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   textfield(context, controller, 'رصيد'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   textfield(context, controller, 'متوسط الصرف'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   txt(context, "جهة الحساب"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   Radiothree(R1: 'مدين',R2:'دائن' ,R3: 'كلاهمها',),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   txt(context, 'الرصيد الحالي'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, 'مدين'),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, 'دائن'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, 'رصيد'),
          )
        ],
      ),
    );
  }
}
