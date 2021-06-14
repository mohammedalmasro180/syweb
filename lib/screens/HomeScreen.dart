import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/screens/Employee.dart';
import 'package:theone/screens/addgroup.dart';
import 'package:theone/screens/class_definition.dart';
import 'package:theone/screens/extra_prices.dart';
import 'package:theone/screens/store.dart';

import 'package:theone/theme/color.dart';
class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: myappbar(context),
        drawer: drawer(),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery
                        .of(context)

                        .size
                        .width,
                    height: 100,
                    color: Colors.amberAccent,
                    child: InkWell(
                      onTap: () {
                        showAlertDialog(context,Languages.of(context).grouphome,addgroup(),addgroup());
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Align(

                                  alignment: FractionalOffset.centerRight,


                                  child: Icon(Icons.group, size: 30,
                                    color: Colors.black,)),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Align(

                                  alignment: FractionalOffset.centerLeft,

                                  child: Text(
                                    Languages.of(context).grouphome, style: TextStyle(fontSize: 14),)),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 100,
                    color: Colors.amberAccent,
                    child: InkWell(
                      onTap: () {

                      },
                      child: InkWell(
                        onTap: () {
                          showAlertDialog(context,Languages.of(context).storehome,store(),store());
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Align(

                                    alignment: FractionalOffset.centerRight,

                                    child: Icon(Icons.ac_unit_sharp, size: 30,
                                      color: Colors.black,)),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Align(

                                    alignment: FractionalOffset.centerLeft,

                                    child: Text(
                                      Languages.of(context).storehome, style: TextStyle(fontSize: 14),)),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 100,
                    color: Colors.amberAccent,
                    child: InkWell(
                      onTap: () {

                      },
                      child: InkWell(
                        onTap: () {
                          showAlertDialog(context,Languages.of(context).Employee,Employee(),Employee());
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Align(

                                    alignment: FractionalOffset.centerRight,

                                    child: Icon(Icons.person, size: 30,
                                      color: Colors.black,)),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Align(

                                    alignment: FractionalOffset.centerLeft,

                                    child: Text(
                                      Languages.of(context).Employehome, style: TextStyle(fontSize: 14),)),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 100,
                    color: Colors.amberAccent,
                    child: InkWell(
                      onTap: () {
                        showAlertDialog(context,Languages.of(context).pricehome,extra_prices(),extra_prices());
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Align(

                                  alignment: FractionalOffset.centerRight,

                                  child: Icon(Icons.attach_money, size: 30,
                                    color: Colors.black,)),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Align(

                                  alignment: FractionalOffset.centerLeft,

                                  child: Text(
                                    Languages.of(context).pricehome, style: TextStyle(fontSize: 14),)),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 100,
                    color: Colors.amberAccent,
                    child: InkWell(
                      onTap: () {
                        showAlertDialog(context,Languages.of(context).classhome,
                            class_definition(),class_definition());
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Align(

                                  alignment: FractionalOffset.centerRight,

                                  child: Icon(Icons.class_, size: 30,
                                    color: Colors.black,)),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Align(

                                  alignment: FractionalOffset.centerLeft,

                                  child: Text(
                                    Languages.of(context).classhome, style: TextStyle(fontSize: 14),)),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }


  showAlertDialog(BuildContext context,String address,
      StatefulWidget statefulWidget1,StatefulWidget statefulWidget2) {

    AlertDialog alert = AlertDialog(
        title: Text(address),
        content: Container(
          width: 350,
          height: 250,
          alignment: FractionalOffset.center,
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton (

                    color: sh,
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                    onPressed:(){
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => statefulWidget1));

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(Languages.of(context).addhome+" "+address,style: TextStyle(color:Colors.white),),


                      ],
                    ),

                  )
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton (

                    color: sh,
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                    onPressed:(){
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => statefulWidget2));

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(Languages.of(context).edithome+" "+address,style: TextStyle(color:Colors.white),),

                      ],
                    ),

                  )
              ),

              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton (

                    color: sh,
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                    onPressed:(){

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(Languages.of(context).delhome+" "+address,style: TextStyle(color:Colors.white),),

                      ],
                    ),

                  )
              ),






            ],

          ),
        )
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );

  }
}
addstore(BuildContext context){
return   Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => store()));
}