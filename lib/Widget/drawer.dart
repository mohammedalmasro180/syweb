import 'package:flutter/material.dart';
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

          ListTile(
            title: Text("المجموعة"),

            leading: Icon(Icons.home),
          ),



        ],

      ),


    );
  }
}
