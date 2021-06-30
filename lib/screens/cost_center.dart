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
      appBar: myappbar(context,Languages.of(context).cost_center),
      drawer: drawer(),

      body: ListView(
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
            child: textfield(context, controller, Languages.of(context).The_main_center),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: textfield(context, controller, Languages.of(context).revenue_estimation)),
                Expanded(child: textfield(context, controller, "%")),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: textfield(context, controller,Languages.of(context).type)),
                Expanded(child: down(context, controller, Languages.of(context).Employeelbldepatment)),

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
            child: textfieldicon(context, controller, Languages.of(context).company_branch,Icon( Icons.search)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(context, controller, Languages.of(context).grouphome),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: textfield(context, controller, Languages.of(context).expense_estimate)),
                Expanded(child: textfield(context, controller, "%")),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(Languages.of(context).Project_details,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: Text(Languages.of(context).project_value,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),),
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
                Expanded(child: Text(Languages.of(context).Additions,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),),
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
                Expanded(child: Text(Languages.of(context).Additions,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),),
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
                Expanded(child: Text(Languages.of(context).Additions,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),),
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
                Expanded(child: Text(Languages.of(context).Discounts,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),),
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
                Expanded(child: Text(Languages.of(context).Total,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),),
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
          )
        ],
      ),
    );
  }
}
