import 'package:flutter/material.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/screens/Employee.dart';
import 'package:theone/screens/addgroup.dart';
import 'package:theone/screens/class_definition.dart';
import 'package:theone/screens/extra_prices.dart';
import 'package:theone/screens/store.dart';
class drawer extends StatefulWidget {
  @override
  _drwaerState createState() => _drwaerState();

}

bool sign=false;
class _drwaerState extends State<drawer> {

  @override

  Widget build(BuildContext context) {


    return Drawer(
      child: ListView(

        children: [
          Padding(padding: EdgeInsets.all(8.0),


            child: Image.asset("assets/logo.jpg",width: 300,height: 300,),),

          InkWell(
            onTap:(){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => addgroup()));

            },
            child: ListTile(
              title: Text(Languages.of(context).grouphome),

              leading: Icon(Icons.group),
            ),
          ),

          InkWell(
            onTap:(){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => class_definition()));

            },
            child: ListTile(
              title: Text(Languages.of(context).classhome),

              leading: Icon(Icons.home),
            ),
          ),

          InkWell(
            onTap:(){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => store()));

            },
            child: ListTile(
              title: Text(Languages.of(context).storehome),

              leading: Icon(Icons.store),
            ),
          ),

          InkWell(
            onTap:(){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Employee()));

            },
            child: ListTile(
              title: Text(Languages.of(context).Employehome),

              leading: Icon(Icons.person),
            ),
          ),

          InkWell(
            onTap:(){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => extra_prices()));

            },
            child: ListTile(
              title: Text(Languages.of(context).pricehome),

              leading: Icon(Icons.money),
            ),
          ),



        ],

      ),


    );
  }
}

