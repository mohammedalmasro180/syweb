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

      appBar: myappbar(context,          Languages.of(context).Account),
      drawer: drawer(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context, Languages.of(context).groupcode),
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
            child: textfield(context, controller, Languages.of(context).account_name),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).groupnameto),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: down(context,controller,Languages.of(context).company_branch),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context, Languages.of(context).account_type),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: down(context, controller, Languages.of(context).Normal),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).Account_suspension,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).Not_allowed_to_sell_when_the_limit_is_exceeded,),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context, Languages.of(context).Nationality),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Civil_No),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Administrator),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Telephone+'1'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Telephone+'2'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).fax),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Mobile),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).sent_to),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller,Languages.of(context).place_of_sending),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller,Languages.of(context).email),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Website),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context, Languages.of(context).Address),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context, Languages.of(context).Governorate),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: down(context, controller, Languages.of(context).undefined),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context, Languages.of(context).Region),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: down(context, controller, Languages.of(context).undefined),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).widget),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
           child: textfield(context, controller,Languages.of(context).home),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Postal_code),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Street),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Avenue),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).turn_number),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller,  Languages.of(context).mail_box),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title:  Languages.of(context).customer_present,)
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context,  Languages.of(context).selling_price),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller,  Languages.of(context).discount_percentage+'%'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Distribution_ratio+'%'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: btn(context, Languages.of(context).Branches__Locations),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: btn(context,Languages.of(context).Payment_Terms),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).cost_center),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).customer_goal),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context, Languages.of(context).customer_rating),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: down(context, controller, Languages.of(context).without),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context, Languages.of(context).Target),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).the_value),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).number_of_invoices),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Contractvalue),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Purchase_value),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).design_value),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context, Languages.of(context).delivery_date),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: down(context, controller, 'Sunday - June'),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context, Languages.of(context).Contract_expiry_date),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: down(context, controller, 'Sunday - June'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfieldicon(context, controller, Languages.of(context).Distribution_ratio, Icon(Icons.search)),
          ),
         Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Notes),
          ),

        ],
      ),
    );
  }
}
