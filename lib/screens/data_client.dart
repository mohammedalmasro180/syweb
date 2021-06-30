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

      appBar: myappbar(context,Languages.of(context).customer_information),
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
            child: txt(context, Languages.of(context).bordermain),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: down(context, controller, Languages.of(context).Customer_receivables+'1203-'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context, Languages.of(context).borderfinal),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: down(context, controller, Languages.of(context).balance_sheet),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Matching_date),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context,Languages.of(context).Account_settings),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).Client,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title:Languages.of(context).Box,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title:Languages.of(context).Expenses,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).Supplier,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).Excluded_credit,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).item,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).income,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   txt(context, Languages.of(context).Warning),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   Radiothree(R1: Languages.of(context).Debit,R2:Languages.of(context).Creditor ,R3: Languages.of(context).without,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   textfield(context, controller, Languages.of(context).Estimated_value),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   txt(context, Languages.of(context).currency),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   down(context, controller, Languages.of(context).Syrian_Pound),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   txt(context, Languages.of(context).Exchange),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   down(context, controller, '1'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   textfield(context, controller, Languages.of(context).currentbalance),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   textfield(context, controller, Languages.of(context).average_exchange),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   txt(context, Languages.of(context).account_side),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   Radiothree(R1: Languages.of(context).Debit,R2:Languages.of(context).Creditor ,R3: Languages.of(context).both_of_them,),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   txt(context, Languages.of(context).current_balance),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller,  Languages.of(context).Debit),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).Creditor),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller,  Languages.of(context).current_balance),
          )
        ],
      ),
    );
  }
}
