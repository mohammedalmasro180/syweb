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
      appBar: myappbar(context,
          Languages.of(context).sales_representative),
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
                  child: textfieldicon(context, controller,  Languages.of(context).Client,Icon(Icons.search)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfieldicon(context, controller, Languages.of(context).cost_center,Icon(Icons.search)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context,  Languages.of(context).Department)),
                      Expanded(child: down(context, controller,  Languages.of(context).Staff)),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context,  Languages.of(context).representative)),
                      Expanded(child: down(context, controller,  Languages.of(context).All)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context,  Languages.of(context).company_branch)),
                      Expanded(child: down(context, controller, Languages.of(context).undefined)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: txt(context,  Languages.of(context).deteto),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context, Languages.of(context).deteform)),
                      Expanded(child: down(context, controller, "06/01/2021")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context,  Languages.of(context).deteto)),
                      Expanded(child: down(context, controller, "06/01/2021")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context,  Languages.of(context).Payment_method)),
                      Expanded(child: down(context, controller, "")),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: txt(context,Languages.of(context).currency)),
                      Expanded(child: down(context, controller, Languages.of(context).Syrian_Pound)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: txt(context,  Languages.of(context).Sort_by),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyStatefulWidget(R1:  Languages.of(context).extradete,R2: Languages.of(context).Client),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: down(context, controller, Languages.of(context).EmployeeGovernorate),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: down(context, controller, Languages.of(context).EmployeeGovernorate),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: txt(context,  Languages.of(context).show),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title:  Languages.of(context).Customer_assembly,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title:  Languages.of(context).Show_stage_bills	,),
                ),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).Show_unstaged_bills,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).Show_discounts_and_extras,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).Group_by_delegate,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).Show_unsold_customers,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).Arrange_clients_by_groups,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).Customer_analysis_according_to_the_largest_net,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).Show_paid,),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title:Languages.of(context).Show_the_rest,),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Mycheckbox(title: Languages.of(context).Show_the_clients_goal,),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Mycheckbox(title: Languages.of(context).sales_returns,),

                        ),
                      ),
                      Expanded(

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Mycheckbox(title: Languages.of(context).sales,),

                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Mycheckbox(title: Languages.of(context).sales_returns,),

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
