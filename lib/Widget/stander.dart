import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/localization/language/languages.dart';
class stander extends StatefulWidget {


  @override
  _EmployeeState createState() => _EmployeeState();
}

class _EmployeeState extends State<stander> {
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


          )
        ],
      ),
    );
  }
}
